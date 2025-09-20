`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:   UTN
// Engineer:  Bruno Glecer
// 
// Create Date: 07/28/2025 11:08:44 PM
// Design Name:  ADC Sampler
// Module Name: adc_sampler
// Project Name:   FMCW Radar
// Target Devices:  XC7Z010CLG400
// Tool Versions:  2025.1
// Description:    Intended to sample streams of data from ADC. Relays AXIX data when
// sample is driven high, and ends when its driven low, while sending a TLAST signal
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adc_sampler
(
    
    input sample,
    input clk,
    input aresetn,
    
     // Slave side
    output wire                        s_axis_tready,
    input  wire [15:0]                 s_axis_tdata,
    input  wire                        s_axis_tvalid,

    // Master side
    input   wire                        m_axis_tready,
    output  wire [15:0]                 m_axis_tdata,
    output  wire                        m_axis_tvalid,
    output  wire                        m_axis_tlast,
    output  wire  [0:1]                 m_axis_tkeep
    );
   
    reg [15:0]           buffer_data;
    reg                  buffer_valid;
    reg                  buffer_tlast;
    reg [0:3]            buffer_tkeep;
    
    assign m_axis_tdata  = buffer_data;
    assign m_axis_tvalid = buffer_valid;
    assign s_axis_tready = 1'b1;
    assign m_axis_tkeep =  2'b11;
    assign m_axis_tlast = buffer_tlast;
    
    always @(posedge clk) begin
        if (!aresetn) begin
            buffer_data  <= 0;
            buffer_valid <= 0;
            buffer_tlast <= 0;
        end else begin
            if(sample && !buffer_tlast) begin
                buffer_valid <= 1;
                buffer_data <= s_axis_tdata;            
            end else if(!sample && !buffer_tlast && buffer_valid) begin
                buffer_tlast <= 1;
                buffer_data <= s_axis_tdata;
            end else if(!sample && buffer_tlast) begin
                buffer_tlast <= 0;
                buffer_valid <= 0;
                buffer_data <= s_axis_tdata;
            end else begin
                buffer_tlast <= 0;
                buffer_data <= 0;
                buffer_valid <= 0;
            end
        end
    end

    
    
endmodule
