`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2025 01:11:21 AM
// Design Name: 
// Module Name: trapezoid_filter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
/* verilator lint_off WIDTHEXPAND */

// TODO: Remove these warnings:
/* verilator lint_off UNUSEDPARAM */
/* verilator lint_off UNUSEDSIGNAL */

/*
    Trapezoid filter implementation in Verilog:

    ADD1 = X[n] - X[n-K]
    ADD2 = ADD1[n] - ADD1[n-L]
    ACC1 = ACC1 + ADD2
    ADD3 = ACC1 + ADD2 * M
    ACC2 = ACC2 + ADD3
    Y_OUT = ACC2 (truncated to output width)
    D_OUT = ADD3 (truncated to output width)
*/

module trapezoid_filter #(
    parameter integer WIDTH       = 14,  // input data width (signed)
    parameter integer L           = 8,   // rise/fall length + flat top length
    parameter integer K           = 5,   // rise/fall length
    parameter integer M_WIDTH     = 10,  // width of M_NUM
    parameter integer M_SHIFT     = 0,   // denominator as power of two
    parameter integer M_NUM       = 10,  // numerator of gain (scaled)
    parameter integer OUT_WIDTH   = 32,  // output data width (signed)
    parameter integer PEAK_THRESH = 2000 // minimum height of derivative for peak detection
)(
    input  wire                        aclk,
    input  wire                        aresetn,    // active-low reset

    // AXI Stream slave (input)
    input  wire signed [WIDTH-1:0]     s_axis_tdata,
    input  wire                        s_axis_tvalid,
    output wire                        s_axis_tready,

    // AXI Stream master (output)
    output reg  signed [OUT_WIDTH-1:0] m_axis_tdata,
    output reg                         m_axis_tvalid,
    input  wire                        m_axis_tready,
    
    // AXI Stream master (output)
    output reg                         md_axis_tdata,
    output reg                         md_axis_tvalid,
    input  wire                        md_axis_tready,
    
    output reg  signed [12:0]          pulse_amplitude,
    output reg                         peak_detected  // Indicates a peak was detected at the current sample
);

    // Basic parameter checks (synthesis tools will ignore $fatal; kept for simulation)
    initial begin
        if (OUT_WIDTH <= 0) $fatal(1, "OUT_WIDTH must be > 0");
        if (K < 0 || L < 0) $fatal(1, "K and L must be non-negative");
        if (K > L) $fatal(1, "K must be <= L for this algorithm");
        if (M_SHIFT < 0) $fatal(1, "M_SHIFT must be non-negative");
    end

    // Derived widths
    localparam integer ADD1_WIDTH = OUT_WIDTH;//WIDTH + 1;                // 15 = 14+1
    localparam integer ADD2_WIDTH = OUT_WIDTH;//ADD1_WIDTH + 1;           // 16 = 15+1
    localparam integer ACC1_WIDTH = OUT_WIDTH;//ADD2_WIDTH + $clog2(L+1); // 20 = 16+4
    localparam integer MUL1_WIDTH = OUT_WIDTH;//ADD2_WIDTH + M_WIDTH;     // 32 = 16 + 16
    // add3 = acc1 + (add2 * M) -> take max width + 1
    localparam integer ADD3_WIDTH = OUT_WIDTH;//((ACC1_WIDTH > MUL1_WIDTH-M_SHIFT) ? ACC1_WIDTH+1 : MUL1_WIDTH-M_SHIFT+1); // 27 = max(20,26)+1
    // acc2 accumulates ADD3 over up to (L+K+1) samples -> give it extra bits
    localparam integer ACC2_WIDTH = OUT_WIDTH; //ADD3_WIDTH + $clog2(L+K+1); // 31 = 27+4

    // saturation limits (ACC2_WIDTH wide, sign-extended)
    localparam signed [ACC2_WIDTH-1:0] SAT_MAX = { 1'b0, {(ACC2_WIDTH-1){1'b1}} };
    localparam signed [ACC2_WIDTH-1:0] SAT_MIN = { 1'b1, {(ACC2_WIDTH-1){1'b0}} };

    // Delay lines
    reg signed [WIDTH-1:0]      x_buffer    [0:K];
    reg signed [ADD1_WIDTH-1:0] add1_buffer [0:L];

    // Intermediates
    reg signed [ADD1_WIDTH-1:0] add1;
    reg signed [ADD2_WIDTH-1:0] add2;
    reg signed [ADD3_WIDTH-1:0] add3;
    reg signed [ACC1_WIDTH-1:0] acc1;
    reg signed [MUL1_WIDTH-1:0] mul1;
    reg signed [ACC2_WIDTH-1:0] acc2;
    reg signed [ACC2_WIDTH  :0] acc2_aux;   // extra bit for saturation check

    // Peak detection
    reg sign_change;    // Used for peak detection using zero-crossings of the derivative
    

    // Input sample
    wire signed [WIDTH-1:0] x_in;
    assign x_in = s_axis_tdata;

    integer i;

    // Flow control
    assign s_axis_tready = 1'b1; // Always ready to accept data

    always @(posedge aclk) begin
        if (!aresetn) begin
            // clear accumulators
            for (i = 0; i <= K; i = i + 1) begin
                x_buffer[i]      <= {WIDTH{1'b0}};
            end
            for (i = 0; i <= L; i = i + 1) begin
                add1_buffer[i]   <= {ADD1_WIDTH{1'b0}};
            end
            add1 <= {ADD1_WIDTH{1'b0}};
            add2 <= {ADD2_WIDTH{1'b0}};
            add3 <= {ADD3_WIDTH{1'b0}};
            acc1 <= {ACC1_WIDTH{1'b0}};
            acc2 <= {ACC2_WIDTH{1'b0}};
            mul1 <= {MUL1_WIDTH{1'b0}};
            m_axis_tdata   <= {OUT_WIDTH{1'b0}};
            m_axis_tvalid  <= 0;
            md_axis_tdata  <= 0;
            md_axis_tvalid <= 0;

            sign_change <= 1'b0;
        end else begin
            if (m_axis_tvalid && m_axis_tready)
                m_axis_tvalid <= 1'b0;
            if (md_axis_tvalid && md_axis_tready)
                md_axis_tvalid <= 1'b0;

            if (s_axis_tvalid && s_axis_tready) begin
                // shift x samples: newest at index 0
                for (i = L; i >= 1; i = i - 1) begin
                    x_buffer[i] <= x_buffer[i-1];
                end
                x_buffer[0] <= x_in;

                // compute add1 = x[n] - x[n-K]
                add1 <= $signed(x_buffer[0]) - $signed(x_buffer[K]);

                // shift add1 history
                for (i = L; i >= 1; i = i - 1) begin
                    add1_buffer[i] <= add1_buffer[i-1];
                end
                add1_buffer[0] <= add1;

                // compute add2 = add1[n] - add1[n-L]
                add2 <= add1 - add1_buffer[L];

                // integrator acc1 = acc1 + add2
                acc1 <= acc1 + add2;

                // mul1 = add2 * M
                //mul1 <= ($signed(add2) * $signed(M_NUM)) >>> M_SHIFT;
                mul1 <= $signed(add2) * $signed(M_NUM);

                // add3 = acc1 + add2*M
                // perform multiply in wider space then shift (arithmetic)
                add3 <= $signed(acc1) + $signed(mul1);

                // acc2 = acc2 + add3 (saturated)
                
                acc2 <= $signed(acc2) + $signed(add3);

                // acc2_aux <= $signed(acc2) + $signed(add3);

                // if ($signed(acc2_aux) > SAT_MAX) begin
                //     acc2 <= SAT_MAX;
                // end else if ($signed(acc2_aux) < SAT_MIN) begin
                //     acc2 <= SAT_MIN;
                // end else begin
                //     acc2 <= acc2_aux[ACC2_WIDTH-1:0];
                // end

                if (add3 >= PEAK_THRESH) begin
                    sign_change <= 1'b1;
                end
                if (sign_change == 1'b1 && add3 <= 0) begin
                    sign_change <= 1'b0;
                    // peak detected at this sample
                    peak_detected <= 1'b1;
                end else begin
                    peak_detected <= 1'b0;
                end

                // Saturated output for accumulator
                if (m_axis_tready) begin
                    m_axis_tdata  <= acc2;//mul1[MUL1_WIDTH-M_SHIFT-1 : 0];//acc2[ACC2_WIDTH-1 -: OUT_WIDTH];
                    m_axis_tvalid <= 1'b1;
                end

                // Peak trigger output
                if (md_axis_tready) begin
                    md_axis_tdata  <= peak_detected;
                    pulse_amplitude <= acc2 >>> 5;
                    md_axis_tvalid <= 1'b1;
                end
            end
        end
    end
endmodule
