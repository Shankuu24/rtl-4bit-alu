`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2026 22:12:02
// Design Name: 
// Module Name: tb_alu_top
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


`timescale 1ns / 1ps

module tb_alu_top;

reg  [3:0] a;
reg  [3:0] b;
reg  [2:0] Opcode;

wire [3:0] y;
wire cout;

// Instantiate ALU
alu_top DUT (
    .a(a),
    .b(b),
    .Opcode(Opcode),
    .y(y),
    .cout(cout)
);

initial
begin

//---------------------------
// Test 1 : ADD
//---------------------------
a = 4'b0101;     //5
b = 4'b0011;     //3
Opcode = 3'b000;
#10;

//---------------------------
// Test 2 : SUB
//---------------------------
a = 4'b1001;     //9
b = 4'b0011;     //3
Opcode = 3'b001;
#10;

//---------------------------
// Test 3 : AND
//---------------------------
a = 4'b1100;
b = 4'b1010;
Opcode = 3'b010;
#10;

//---------------------------
// Test 4 : OR
//---------------------------
a = 4'b1100;
b = 4'b1010;
Opcode = 3'b011;
#10;

//---------------------------
// Test 5 : XOR
//---------------------------
a = 4'b1100;
b = 4'b1010;
Opcode = 3'b100;
#10;

//---------------------------
// Test 6 : NOT A
//---------------------------
a = 4'b1010;
b = 4'b0000;
Opcode = 3'b101;
#10;

//---------------------------
// Test 7 : INC
//---------------------------
a = 4'b0110;
b = 4'b0000;
Opcode = 3'b110;
#10;

//---------------------------
// Test 8 : PASS A
//---------------------------
a = 4'b1110;
b = 4'b0000;
Opcode = 3'b111;
#10;

$stop;

end

endmodule
