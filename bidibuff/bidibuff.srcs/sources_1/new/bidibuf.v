`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 20:45:39
// Design Name: 
// Module Name: bidibuf
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


module bidibuf(inout a, b, input ctrl);
    bufif0 BUF1(b, a, ctrl);
    bufif1 BUF2(a, b, ctrl);
endmodule
