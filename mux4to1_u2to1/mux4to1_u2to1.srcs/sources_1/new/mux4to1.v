`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2025 21:56:13
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


module mux4to1(a, b, c, d, s1, s2, out);
    input a, b, c, d, s1, s2;
    output out;
    wire w1, w2;
    mux2to1 M1(.a(a), .b(b), .s(s1), .out(w1));
    mux2to1 M2(.a(c), .b(d), .s(s1), .out(w2));
    mux2to1 M3(.a(w1), .b(w2), .s(s2), .out(out));
endmodule
