`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 20:48:21
// Design Name: 
// Module Name: tb_bidibuf
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


module tb_bidibuf;
    wire a, b;
    reg ctrl;
    reg t1, t2;
    integer i;
    bidibuf DUT(a, b, ctrl);
    initial begin
        {t1, t2, ctrl}=0;
    end
    initial begin
        for(i=0; i<8; i=i+1)
            begin
                {t1, t2, ctrl}=i;
                #10;
            end
    #20 $finish;
    end
    
    assign b = ctrl? t1:1'bz;
    assign a = ~ctrl? t2:1'bz;
    initial 
        $monitor("a = %b, b = %b, ctrl = %b", a, b, ctrl);
endmodule
