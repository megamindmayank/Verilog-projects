`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2025 23:34:27
// Design Name: 
// Module Name: fa1
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


module fa1(a, b, c, sum, carry);
    input a, b, c;
    output sum, carry;
    wire w1, w2, w3;
    ha HA1(.a(a), .b(b), .sum(w1), .carry(w2));
    ha HA2(.a(w1), .b(c), .sum(sum), .carry(w3));
    or or1(carry, w2, w3);
endmodule
