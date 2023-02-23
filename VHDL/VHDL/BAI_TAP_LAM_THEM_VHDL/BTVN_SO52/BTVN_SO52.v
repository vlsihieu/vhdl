`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:46:11 06/29/2020 
// Design Name: 
// Module Name:    DEM_00_99_4TANSO_2SW_HT_7DOAN 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BTVN_SO52(
    input ckht,
	 input [1:0]btn,
	 input sw0,
    output [7:0] anode,
    output [7:0] sseg
    );
wire ena1khz;
wire ena1hz,ena5hz,ena2hz,ena10hz;
/////////////////
wire rst = btn[0];
wire btn_mode = btn[1];
////////////////
wire [5:0] oe;
wire [2:0] sel_3b;
/////////////////
wire  ena_db;
/////////////////
wire [3:0] donvi;
wire [3:0] chuc;
////////////////
wire [7:0] dc_8led = 8'hff; // cho phep 8 dp sang
wire [7:0] ena_8led = 8'h03; // cho phep 8 7seg sang

CHIA_10ENA       IC0(.ckht(ckht),
                     .ena5hz(ena5hz),
							.ena2hz(ena2hz),
							.ena10hz(ena10hz),
							.ena1hz(ena1hz),
							.ena1khz(ena1khz)
							);							
DEM_3BIT_BTN     IC1(.ckht(ckht),
                     .rst(rst),
							.btn(btn_mode),
							.q(sel_3b)
						  );
GIAIMA_OE        IC2 (.sel_3b(sel_3b),
                      .oe(oe)
							 );
SELECT_4TANSO    IC2(.ena5hz(ena5hz),
                     .ena10hz(ena10hz),
							.ena2hz(ena2hz),
							.ena1hz(ena1hz),
							.oe(oe),
							.ena_out(ena_db)
							);							  
DEM_2SO          IC3(.ckht(ckht),
                     .rst(rst),
						   .ena_db(ena_db),
						   .oe(oe),
						   .donvi(donvi),
						   .chuc(chuc)
						   );

GIAIMA_HIENTHI_8LED_7DOAN IC4 (.ckht(ckht),
                               .ena1khz(ena1khz),
										 .led70(donvi),
										 .led71(chuc),
										 .led72(4'hf),
										 .led73(4'hf),
										 .led74(4'hf),
										 .led75(4'hf),
										 .led76(4'hf),
										 .led77(4'hf),
										 .anode(anode),
										 .sseg(sseg),
										 .dc_8led(dc_8led),
										 .ena_8led(ena_8led)
										 );

endmodule


