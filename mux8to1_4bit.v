`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2026 22:06:24
// Design Name: 
// Module Name: mux8to1_4bit
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


module mux8to1_4bit(
    input  [3:0] i0,
    input  [3:0] i1,
    input  [3:0] i2,
    input  [3:0] i3,
    input  [3:0] i4,
    input  [3:0] i5,
    input  [3:0] i6,
    input  [3:0] i7,
    input  [2:0] sel,
    output [3:0] y
);

wire [3:0] w0, w1, w2, w3;
wire [3:0] w4, w5;

//-------------------------
// Level 1
//-------------------------

// I0 vs I1
mux2to1 m0  (.a(i0[0]), .b(i1[0]), .s(sel[0]), .y(w0[0]));
mux2to1 m1  (.a(i0[1]), .b(i1[1]), .s(sel[0]), .y(w0[1]));
mux2to1 m2  (.a(i0[2]), .b(i1[2]), .s(sel[0]), .y(w0[2]));
mux2to1 m3  (.a(i0[3]), .b(i1[3]), .s(sel[0]), .y(w0[3]));

// I2 vs I3
mux2to1 m4  (.a(i2[0]), .b(i3[0]), .s(sel[0]), .y(w1[0]));
mux2to1 m5  (.a(i2[1]), .b(i3[1]), .s(sel[0]), .y(w1[1]));
mux2to1 m6  (.a(i2[2]), .b(i3[2]), .s(sel[0]), .y(w1[2]));
mux2to1 m7  (.a(i2[3]), .b(i3[3]), .s(sel[0]), .y(w1[3]));

// I4 vs I5
mux2to1 m8  (.a(i4[0]), .b(i5[0]), .s(sel[0]), .y(w2[0]));
mux2to1 m9  (.a(i4[1]), .b(i5[1]), .s(sel[0]), .y(w2[1]));
mux2to1 m10 (.a(i4[2]), .b(i5[2]), .s(sel[0]), .y(w2[2]));
mux2to1 m11 (.a(i4[3]), .b(i5[3]), .s(sel[0]), .y(w2[3]));

// I6 vs I7
mux2to1 m12 (.a(i6[0]), .b(i7[0]), .s(sel[0]), .y(w3[0]));
mux2to1 m13 (.a(i6[1]), .b(i7[1]), .s(sel[0]), .y(w3[1]));
mux2to1 m14 (.a(i6[2]), .b(i7[2]), .s(sel[0]), .y(w3[2]));
mux2to1 m15 (.a(i6[3]), .b(i7[3]), .s(sel[0]), .y(w3[3]));

//-------------------------
// Level 2
//-------------------------

// W0 vs W1
mux2to1 m16 (.a(w0[0]), .b(w1[0]), .s(sel[1]), .y(w4[0]));
mux2to1 m17 (.a(w0[1]), .b(w1[1]), .s(sel[1]), .y(w4[1]));
mux2to1 m18 (.a(w0[2]), .b(w1[2]), .s(sel[1]), .y(w4[2]));
mux2to1 m19 (.a(w0[3]), .b(w1[3]), .s(sel[1]), .y(w4[3]));

// W2 vs W3
mux2to1 m20 (.a(w2[0]), .b(w3[0]), .s(sel[1]), .y(w5[0]));
mux2to1 m21 (.a(w2[1]), .b(w3[1]), .s(sel[1]), .y(w5[1]));
mux2to1 m22 (.a(w2[2]), .b(w3[2]), .s(sel[1]), .y(w5[2]));
mux2to1 m23 (.a(w2[3]), .b(w3[3]), .s(sel[1]), .y(w5[3]));

//-------------------------
// Level 3
//-------------------------

mux2to1 m24 (.a(w4[0]), .b(w5[0]), .s(sel[2]), .y(y[0]));
mux2to1 m25 (.a(w4[1]), .b(w5[1]), .s(sel[2]), .y(y[1]));
mux2to1 m26 (.a(w4[2]), .b(w5[2]), .s(sel[2]), .y(y[2]));
mux2to1 m27 (.a(w4[3]), .b(w5[3]), .s(sel[2]), .y(y[3]));

endmodule
