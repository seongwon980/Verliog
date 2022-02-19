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


module FullAdder_tb;

reg a, b, ci;
wire s, co;

FullAdder fa(.a(a), .b(b), .ci(ci), .s(s), .co(co));

initial begin
    a = 1'b0; b = 1'b0; ci = 1'b0;
#50 a = 1'b0; b = 1'b0; ci = 1'b1;
#50 a = 1'b0; b = 1'b1; ci = 1'b0;
#50 a = 1'b0; b = 1'b1; ci = 1'b1;
#50 a = 1'b1; b = 1'b1; ci = 1'b1;

end


endmodule
