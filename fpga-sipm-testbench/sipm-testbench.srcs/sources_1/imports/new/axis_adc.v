`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 04:13:40 PM
// Design Name: AXIS ADC
// Module Name: axis_adc
// Project Name: 
// Target Devices: XC7Z010CLG400 (Red Pitaya 125-14 v1)
// Tool Versions: 2025.1
// Description:  Fetches data from 14bit Red Pitaya ADC and converts into signed values
// ADC Model:  LTC2145
//
// Dependencies: 
// 
// Revision: 1
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

 
module axis_adc
(
    // ADC IC Signals
    input wire [15:0]   adc_dat_a,
    input wire [15:0]   adc_dat_b,
   
    // Global AXI Clock
    input wire          aclk,
   
    // AXIS ADC Channel 1
    input wire                          M01_AXIS_TREADY,
    output  wire [15:0]  M01_AXIS_TDATA,
    output  wire                        M01_AXIS_TVALID,
    output  wire                        M01_AXIS_TLAST,
    output  wire [0:3]                  M01_AXIS_TKEEP,

    // AXIS ADC Channel 2
    input wire                          M02_AXIS_TREADY,
    output  wire [15:0] M02_AXIS_TDATA,
    output  wire                        M02_AXIS_TVALID,
    output  wire                        M02_AXIS_TLAST,
    output  wire  [0:3]                 M02_AXIS_TKEEP

    );
    
    reg  [15:0] int_dat_a_reg;
    reg  [15:0] int_dat_b_reg;
    
    
    always @(posedge aclk)
    begin
        int_dat_a_reg <= adc_dat_a[15:2];
        int_dat_b_reg <= adc_dat_b[15:2];
    end
    
    assign M01_AXIS_TDATA = { {3{~int_dat_a_reg[13]}}, int_dat_a_reg[12:0] };
    assign M02_AXIS_TDATA = { {3{~int_dat_b_reg[13]}}, int_dat_b_reg[12:0] };
        
    assign M01_AXIS_TVALID = 1'b1;
    assign M02_AXIS_TVALID = 1'b1;
    
    assign M01_AXIS_TLAST = 1'b0;
    assign M02_AXIS_TLAST = 1'b0;
    
    assign M01_AXIS_TKEEP = 4'hf;
    assign M02_AXIS_TKEEP = 4'hf;
    
endmodule
