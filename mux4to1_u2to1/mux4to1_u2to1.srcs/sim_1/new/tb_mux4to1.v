`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2025 22:02:56
// Design Name: 
// Module Name: tb_mux4to1
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


module tb_mux4to1;
    reg a, b, c, d, s1, s2;
    wire out;
    integer i;
    mux4to1 DUT(.a(a), .b(b), .c(c), .d(d), .s1(s1), .s2(s2), .out(out));
    initial
        {a, b, c, d, s1, s2} = 0;
    initial begin
        for(i=0; i<64; i=i+1)
            begin
                {a, b, c, d, s1, s2} = i;
                #10;
            end
            #20 $finish;
     end
     initial
        $monitor("the values of a= %b, b = %b, c = %b, d = %b, s1 = %b, s2 = %b, out = %b", a, b, c, d, s1, s2, out);
                
endmodule
