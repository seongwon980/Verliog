`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/20 01:30:11
// Design Name: 
// Module Name: FourBitAdder
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

module FullAdder(
    input a,
    input b,
    input ci,
    output s,
    output co
    );

    assign s = (~a & ~b & ci) + (~a & b & ~ci) + (a & b & ci) + (a & ~b & ~ci); 
    assign co = (a & b) + (b & ci) + (a & ci);
endmodule


module FourBitAdder(
    input[3:0] a,
    input[3:0] b,
    output[4:0] s
    );
    
    wire[2:0] c;

    FullAdder f3(a[3], b[3], c[2], s[3], s[4]);
    FullAdder f2(a[2], b[2], c[1], s[2], c[2]);
    FullAdder f1(a[1], b[1], c[0], s[1], c[1]);
    FullAdder f0(a[0], b[0], 1'b0, s[0], c[0]);
    
endmodule
