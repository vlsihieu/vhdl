`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:52:43 12/11/2022 
// Design Name: 
// Module Name:    gate_and 
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
module gate_and(LD0,BTNU,BTNR);
output LD0;
input BTNU, BTNR;
and#50 and1(LD0,BTNU,BTNR); 
endmodule
