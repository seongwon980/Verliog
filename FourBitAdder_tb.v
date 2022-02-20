// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/20 00:07:04
// Design Name: 
// Module Name: FullAdder_tb
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


module FourBitAdder_tb;

reg [3:0] a;
reg [3:0] b;

wire [4:0] s;

FourBitAdder fba(.a(a), .b(b), .s(s));

initial begin
  $dumpfile("dump.vcd");
  $dumpvars(1);
    a = 4'd0; b = 4'd0;
#10 a = 4'd3; b = 4'd2;
#10 a = 4'd1; b = 4'd8;
#10 a = 4'd12; b = 4'd14;
#10 a = 4'd3; b = 4'd11;

#60;
end


endmodule
