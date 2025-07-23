`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2025 21:06:06
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(in, s1, s0, out);
    input [3:0] in;
    input s0, s1;
    wire [3:0] w;
    wire [3:0] ou;
    output out;
    dec D1(s1, s0, w);
    trimux b1(in[0], w[0], ou[0]);
    trimux b2(in[1], w[1], ou[1]);
    trimux b3(in[2], w[2], ou[2]);
    trimux b4(in[3], w[3], ou[3]);
    or OR1(out, ou[0], ou[1], ou[2], ou[3]);
endmodule
