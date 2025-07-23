`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.07.2025 22:17:42
// Design Name: 
// Module Name: ripadd
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


module ripadd(a, b, ci, sum, co);
    input [3:0] a;
    input [3:0] b;
    input ci;
    output co;
    output [3:0] sum;
    wire w1, w2, w3;
    fa FA1(.a(a[0]), .b(b[0]), .c(ci), .sum(sum[0]), .carry(w1));
    fa FA2(.a(a[1]), .b(b[1]), .c(w1), .sum(sum[1]), .carry(w2));
    fa FA3(.a(a[2]), .b(b[2]), .c(w2), .sum(sum[2]), .carry(w3));
    fa FA4(.a(a[3]), .b(b[3]), .c(w3), .sum(sum[3]), .carry(co));
endmodule
