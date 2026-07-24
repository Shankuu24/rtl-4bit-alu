`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2026 21:42:14
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

wire s1;
wire c1;
wire c2;

// Half Adder 1
assign s1 = a ^ b;
assign c1 = a & b;

// Half Adder 2
assign sum = s1 ^ cin;
assign c2  = s1 & cin;

// Final Carry
assign cout = c1 | c2;

endmodule
