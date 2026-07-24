`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2026 21:55:05
// Design Name: 
// Module Name: mux4to1_4bit
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


module mux4to1_4bit(
    input  [3:0] a,
    input  [3:0] b,
    input  [3:0] c,
    input  [3:0] d,
    input  [1:0] sel,
    output [3:0] y
);

wire [3:0] w1;
wire [3:0] w2;

// First stage
mux2to1 m0 (.a(a[0]), .b(b[0]), .s(sel[0]), .y(w1[0]));
mux2to1 m1 (.a(a[1]), .b(b[1]), .s(sel[0]), .y(w1[1]));
mux2to1 m2 (.a(a[2]), .b(b[2]), .s(sel[0]), .y(w1[2]));
mux2to1 m3 (.a(a[3]), .b(b[3]), .s(sel[0]), .y(w1[3]));

mux2to1 m4 (.a(c[0]), .b(d[0]), .s(sel[0]), .y(w2[0]));
mux2to1 m5 (.a(c[1]), .b(d[1]), .s(sel[0]), .y(w2[1]));
mux2to1 m6 (.a(c[2]), .b(d[2]), .s(sel[0]), .y(w2[2]));
mux2to1 m7 (.a(c[3]), .b(d[3]), .s(sel[0]), .y(w2[3]));

// Second stage
mux2to1 m8  (.a(w1[0]), .b(w2[0]), .s(sel[1]), .y(y[0]));
mux2to1 m9  (.a(w1[1]), .b(w2[1]), .s(sel[1]), .y(y[1]));
mux2to1 m10 (.a(w1[2]), .b(w2[2]), .s(sel[1]), .y(y[2]));
mux2to1 m11 (.a(w1[3]), .b(w2[3]), .s(sel[1]), .y(y[3]));

endmodule
