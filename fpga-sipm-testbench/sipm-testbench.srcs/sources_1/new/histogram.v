`timescale 1ns / 1ps

module rams_tdp_rf_rf #(parameter ADDR_WIDTH = 13)(clka,clkb,ena,enb,wea,web,addra,addrb,dia,dib,doa,dob);
localparam DEPTH = 1 << ADDR_WIDTH;

input clka,clkb,ena,enb,wea,web;
input [ADDR_WIDTH:0] addra,addrb;
input [31:0] dia,dib;
output [31:0] doa,dob;
reg [31:0] ram [DEPTH:0];
reg [31:0] doa,dob;

always @(posedge clka)
begin
if (ena)
begin
if (wea)
ram[addra] <= dia;
doa <= ram[addra];
end
end

always @(posedge clkb)
begin
if (enb)
begin
if (web)
ram[addrb] <= dib;
dob <= ram[addrb];
end
end

endmodule



module histogram #(
    parameter integer DATA_WIDTH = 13,
    parameter integer BINS = 1 << DATA_WIDTH


)(
    
    input wire          clk,
    input wire          resetn,
    input wire [31:0]   s_axi_awaddr,
    input wire          s_axi_awvalid,
    output wire         s_axi_awready,
    input wire [31:0]   s_axi_wdata,
    input wire [3:0]    s_axi_wstrb,
    input wire          s_axi_wvalid,
    output wire         s_axi_wready,
    output wire [1:0]   s_axi_bresp,
    output wire         s_axi_bvalid,
    input wire          s_axi_bready,
    input wire [31:0]   s_axi_araddr,
    input wire          s_axi_arvalid,
    output wire         s_axi_arready,
    output wire [31:0]  s_axi_rdata,
    output wire [1:0]   s_axi_rresp,
    output wire         s_axi_rvalid,
    input wire          s_axi_rready,
    
    input wire [DATA_WIDTH:0]   data_in,
    input wire                  wr_en
    );


    reg [31:0]   rw_ctrl; // Enable, reset, 
     
     
    // Internal signals
    reg [31:0] rdata_reg;
    reg rvalid_reg, bvalid_reg;
    reg s_axi_awready_reg, wready_reg, arready_reg;

    
    
    reg [63:0] counter;
    integer i;

    assign s_axi_awready = s_axi_awready_reg;
    assign s_axi_wready = wready_reg;
    assign s_axi_bresp = 2'b00; // OKAY response
    assign s_axi_bvalid = bvalid_reg;
    assign s_axi_arready = arready_reg;
    assign s_axi_rdata = rdata_reg;
    assign s_axi_rresp = 2'b00; // OKAY response
    assign s_axi_rvalid = rvalid_reg;

    // Write address handshake
    always @(posedge clk) begin
        if (!resetn) begin
            s_axi_awready_reg <= 1'b0;
        end else if (s_axi_awvalid && !s_axi_awready_reg) begin
            s_axi_awready_reg <= 1'b1;
        end else begin
            s_axi_awready_reg <= 1'b0;
        end
    end
    
    wire [DATA_WIDTH-1:0] addrb;
    assign addrb = s_axi_araddr[(DATA_WIDTH-1):0] >> 2;
    
    // Write data handshake
    always @(posedge clk) begin
        if (!resetn) begin
            wready_reg <= 1'b0;
            bvalid_reg <= 1'b0;
        end else if (s_axi_wvalid && !wready_reg) begin
            wready_reg <= 1'b1;
            case (s_axi_awaddr[5:2])
                4'd0: begin
                    if (s_axi_wstrb[0]) rw_ctrl[7:0] <= s_axi_wdata[7:0];
                    if (s_axi_wstrb[1]) rw_ctrl[15:8] <= s_axi_wdata[15:8];
                    if (s_axi_wstrb[2]) rw_ctrl[23:16] <= s_axi_wdata[23:16];
                    if (s_axi_wstrb[3]) rw_ctrl[31:24] <= s_axi_wdata[31:24];
                end
                default: begin
                    // Handle invalid addresses
                end
            endcase
            bvalid_reg <= 1'b1;
        end else if (s_axi_bready && bvalid_reg) begin
            bvalid_reg <= 1'b0;
        end else begin
            wready_reg <= 1'b0;
        end
        
        if(reset_counter == BINS-1) begin
            rw_ctrl[1] <= 1'b0;
        end
    end
    wire [(DATA_WIDTH-1):0] channel_read = s_axi_araddr[(DATA_WIDTH-1):0] >> 2;
    // Read address handshake
    wire [31:0] doutb;
    reg loading_data;
    
    always @(posedge clk) begin
        if (!resetn) begin
            arready_reg <= 1'b0;
            rvalid_reg <= 1'b0;
            loading_data <= 1'b0;
        end else if (s_axi_arvalid && !arready_reg) begin
            
            if (s_axi_araddr[16] == 1'd0) begin
                case (s_axi_araddr[5:2])
                    4'd00000: rdata_reg <= rw_ctrl;
                    4'd00001: rdata_reg <= counter;
                    default: rdata_reg <= 32'hdeadbeef; // Default value
                endcase
                arready_reg <= 1'b1;
                rvalid_reg <= 1'b1;    
            end else if(!loading_data) begin
                rvalid_reg <= 1'b0;
                loading_data <= 1'b1;
            end else begin
                rdata_reg <= doutb;
                loading_data <= 1'b0;
                rvalid_reg <= 1'b1;
                arready_reg <= 1'b1;
            end
            
        end else if (s_axi_rready && rvalid_reg) begin
            rvalid_reg <= 1'b0;
        end else begin
            arready_reg <= 1'b0;
        end
    end
    
        reg we;
        reg ena;
        reg [DATA_WIDTH-1:0] addra;
        reg [31:0] di;
        wire [31:0] dout;
        
        reg [DATA_WIDTH-1:0] reset_counter;
                
        reg [1:0] state = 0;
                
        // Instantiate the RAM
        rams_tdp_rf_rf #(
            .ADDR_WIDTH(DATA_WIDTH)
        )
        ram_hist (
            .clka(clk),
            .clkb(clk),
            .ena(ena),
            .enb(ena),     
            .wea(we),     
            .web(1'b0),                                    
            .addra(addra),
            .addrb(addrb),
            .dia(di),
            .dib(32'b0),
            .doa(dout),
            .dob(doutb)
        );
    
    always @(posedge clk) begin
        
        if(!resetn) begin
            reset_counter <= 0;
            we <= 0;
            ena <= 1;
            di <= 0;
            addra <= 0;
        end else if(rw_ctrl & 32'b10) begin
            we <= 1'b1;
            di <= 1'b0;
            if(reset_counter == BINS-1) begin
                reset_counter <= 0;
            end else begin
                reset_counter <= reset_counter + 1;
            end
        end else if(wr_en && (rw_ctrl & 32'b1) && (state==0))  begin
            addra <= data_in;
            state <= 1;
        end else if(state==1)  begin
            state <= 2;
        end else if(state==2) begin
            we <= 1;
            di <= dout + 1;  
            state <= 3;          
        end else if(state==3)  begin
            we <= 0;
            if(wr_en == 0)begin
                state <= 0;
            end
        end else begin
            we <= 0;
        end
    end

endmodule
