`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2025 21:22:30
// Design Name: 
// Module Name: tb_mux
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


module tb_mux;
    reg [3:0] in;
    reg s1, s0;
    wire out;
    integer i;
    mux4to1 DUT(in, s1, s0, out);
    initial begin
        {in, s1, s0} = 0;
    end
    initial begin
        for(i=0; i<64; i=i+1)
            begin
            {in, s1, s0} = i;
            #10;
            end
    #20 $finish;
    end
    initial
        $monitor("the values are in = %04b, s1 = %b, s0 = %b, out = %b", in, s1, s0, out);
endmodule
