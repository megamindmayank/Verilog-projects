`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.07.2025 22:40:57
// Design Name: 
// Module Name: tb_ripadd
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


module tb_ripadd;
    reg [3:0] a;
    reg [3:0] b;
    reg ci;
    wire [3:0] sum;
    wire co;

    integer i;

    ripadd DUT(.a(a), .b(b), .ci(ci), .sum(sum), .co(co));

    initial begin
        $display("    a    b   ci |  sum   co");
        $display("----------------------------");

        for(i = 0; i < 512; i = i + 1) begin
            {ci, b, a} = i[8:0]; // ensure 9-bit indexing
            #10;
            $display("%04b %04b   %b  | %04b    %b", a, b, ci, sum, co);
        end

        $finish;
    end

endmodule

