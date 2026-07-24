`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2026 22:04:03
// Design Name: 
// Module Name: arithmetic_unit
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


module arithmetic_unit(
    input  [3:0] a,
    input  [3:0] b,
    input  [1:0] sel,
    input        cin,
    output [3:0] result,
    output       cout
);

wire [3:0] b_new;

// 4:1 MUX
// Sel = 00 -> B
// Sel = 01 -> ~B
// Sel = 10 -> 4'b0001
// Sel = 11 -> 4'b0000

mux4to1_4bit MUX1(
    .a(b),
    .b(~b),
    .c(4'b0001),
    .d(4'b0000),
    .sel(sel),
    .y(b_new)
);

// 4-bit Ripple Carry Adder

ripple_adder_4bit RCA1(
    .a(a),
    .b(b_new),
    .cin(cin),
    .sum(result),
    .cout(cout)
);

endmodule
