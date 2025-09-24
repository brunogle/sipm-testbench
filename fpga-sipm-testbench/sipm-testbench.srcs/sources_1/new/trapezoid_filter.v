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

module trapezoid_filter #(
    parameter integer WIDTH     = 32,   // input data width (signed)
    parameter integer L         = 30,    // rise/fall length
    parameter integer K         = 2,   // flat top length
    parameter integer M_NUM     = 38,   // numerator of gain (scaled)
    parameter integer M_SHIFT   = 8,    // denominator as power of two
    parameter integer OUT_EXTRA = 0    // extra bits for accumulator growth
)(
    input  wire                     aclk,
    input  wire                     aresetn,    // active-low reset

    // AXI Stream slave (input)
    input  wire signed [WIDTH-1:0]  s_axis_tdata,
    input  wire                     s_axis_tvalid,
    output wire                     s_axis_tready,

    // AXI Stream master (output)
    output reg  signed [WIDTH+OUT_EXTRA-1:0] m_axis_tdata,
    output reg                      m_axis_tvalid,
    input  wire                     m_axis_tready
);

    // Derived widths
    localparam integer DKW   = WIDTH + 1;
    localparam integer PW    = DKW + 1;
    localparam integer RMW   = DKW + $clog2(M_NUM+1) + 2;
    localparam integer ACCW  = WIDTH + OUT_EXTRA;

    // Delay lines
    reg signed [WIDTH-1:0] delay_x [0:L-1];
    reg signed [WIDTH-1:0] x_n_minus_L;
    reg signed [DKW-1:0]   dK_delay [0:K-1];
    reg signed [DKW-1:0]   dK_n_minus_K;

    // Intermediates
    reg signed [DKW-1:0]  dK;
    reg signed [PW-1:0]   p;
    reg signed [RMW-1:0]  r;
    reg signed [ACCW-1:0] s_acc;

    integer i;

    // Flow control
    assign s_axis_tready = (~m_axis_tvalid) | m_axis_tready;

    always @(posedge aclk) begin
        if (!aresetn) begin
            for (i=0; i<L; i=i+1) delay_x[i] <= 0;
            for (i=0; i<K; i=i+1) dK_delay[i] <= 0;
            x_n_minus_L <= 0;
            dK <= 0;
            dK_n_minus_K <= 0;
            p <= 0;
            r <= 0;
            s_acc <= 0;
            m_axis_tdata  <= 0;
            m_axis_tvalid <= 0;
        end else begin
            if (m_axis_tvalid && m_axis_tready)
                m_axis_tvalid <= 1'b0;

            if (s_axis_tvalid && s_axis_tready) begin
                // --- delay_x for x(n-L) ---
                if (L > 0) begin
                    for (i=L-1; i>0; i=i-1) delay_x[i] <= delay_x[i-1];
                    delay_x[0] <= s_axis_tdata;
                    x_n_minus_L <= delay_x[L-1];
                end else begin
                    x_n_minus_L <= 0;
                end

                // --- dK = x(n) - x(n-L) ---
                if (L > 0)
                    dK <= $signed(s_axis_tdata) - $signed(x_n_minus_L);
                else
                    dK <= $signed(s_axis_tdata);

                // --- dK delay for dK(n-K) ---
                if (K > 0) begin
                    for (i=K-1; i>0; i=i-1) dK_delay[i] <= dK_delay[i-1];
                    dK_delay[0] <= dK;
                    dK_n_minus_K <= dK_delay[K-1];
                end else begin
                    dK_n_minus_K <= 0;
                end

                // --- p = dK - dK(n-K) ---
                p <= $signed(dK) - $signed(dK_n_minus_K);

                // --- r = (M_NUM * dK >> M_SHIFT) + p ---
                r <= ($signed(M_NUM) * $signed(dK) >>> M_SHIFT) + $signed(p);

                // --- s(n) = s(n-1) + r ---
                s_acc <= s_acc + $signed(r);

                if (~m_axis_tvalid || m_axis_tready) begin
                    m_axis_tdata  <= s_acc + $signed(r);
                    m_axis_tvalid <= 1'b1;
                end
            end
        end
    end
endmodule

