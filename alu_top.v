`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2026 22:11:16
// Design Name: 
// Module Name: alu_top
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


module alu_top(
    input  [3:0] a,
    input  [3:0] b,
    input  [2:0] Opcode,
    output [3:0] y,
    output cout
);
wire [1:0] sel;
wire cin;

wire [3:0] Arithmetic_Result;
wire Arithmetic_Cout;

wire [3:0] And_Out;
wire [3:0] Or_Out;
wire [3:0] Xor_Out;
wire [3:0] Not_Out;
wire [3:0] Pass_Out;

assign sel =
       (Opcode == 3'b000) ? 2'b00 :   
       (Opcode == 3'b001) ? 2'b01 :   
       (Opcode == 3'b110) ? 2'b10 :   
                            2'b11 ;   

assign cin =
       (Opcode == 3'b001) ? 1'b1 : 1'b0;
arithmetic_unit AU(

.a(a),
.b(b),
.sel(sel),
.cin(cin),
.result(Arithmetic_Result),
.cout(Arithmetic_Cout)

);

assign And_Out  = a & b;
assign Or_Out   = a | b;
assign Xor_Out  = a ^ b;
assign Not_Out  = ~a;
assign Pass_Out = a;

mux8to1_4bit FINAL_MUX(

.i0(Arithmetic_Result),   // ADD
.i1(Arithmetic_Result),   // SUB
.i2(And_Out),
.i3(Or_Out),
.i4(Xor_Out),
.i5(Not_Out),
.i6(Arithmetic_Result),   // INC
.i7(Pass_Out),

.sel(Opcode),
.y(y)

);

assign cout = Arithmetic_Cout;

endmodule
