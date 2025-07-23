`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2025 21:00:13
// Design Name: 
// Module Name: dec
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


module dec(a, b, out);
    input a, b;
    output [3:0] out;
    assign out[3] = a&b;
    assign out[2] = a&(!b);
    assign out[1] = (!a)&b;
    assign out[0] = (!a)&(!b);
endmodule
