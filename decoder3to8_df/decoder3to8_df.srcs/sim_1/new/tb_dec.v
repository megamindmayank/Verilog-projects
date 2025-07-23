`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2025 00:11:20
// Design Name: 
// Module Name: tb_dec
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


module tb_dec;
    reg a, b, c;
    wire [7:0] out;
    integer i;
    dec DUT(.a(a), .b(b), .c(c), .out(out));
    initial begin
        {a, b, c} = 0;
    end
    initial begin
        for(i=0; i<8; i = i+1)
            begin
                {a, b, c} = i;
                #10;
            end
            #20 $finish;
     end
     initial
        $monitor("Values of a = %b, b = %b, c = %c | %08b", a, b, c, out);
    
endmodule
