`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.07.2025 22:47:02
// Design Name: 
// Module Name: ta_fa
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


module ta_fa;
    reg a, b, c;
    wire sum, carry;
    fa uut(
        .a(a),
        .b(b),
        .c(c),
        .sum(sum),
        .carry(carry)
    );
    initial begin
        $display("Time\t a b c | sum carry");
        $monitor("%4t\t %b %b %b |  %b    %b", $time, a, b, c, sum, carry);

    // Test all input combinations
        a = 0; b = 0; c = 0; #10;
        a = 0; b = 0; c = 1; #10;
        a = 0; b = 1; c = 0; #10;
        a = 0; b = 1; c = 1; #10;
        a = 1; b = 0; c = 0; #10;
        a = 1; b = 0; c = 1; #10;
        a = 1; b = 1; c = 0; #10;
        a = 1; b = 1; c = 1; #10;

    $finish;
  end
endmodule
