`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2021 02:30:33 PM
// Design Name: 
// Module Name: RippleCarryAdder
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


module RippleCarryAdder(

input ci1,

input [7:0] a1, b,

output wire [7:0] s,

output wire [6:0] co,

output wire Cout
);

Adder U1(.S(s[0]), .Co(co[0]), .A(a1[0]), .B(b[0]), .Ci(ci1));

Adder U2(.S(s[1]), .Co(co[1]), .A(a1[1]), .B(b[1]), .Ci(co[0]));

Adder U3(.S(s[2]), .Co(co[2]), .A(a1[2]), .B(b[2]), .Ci(co[1]));

Adder U4(.S(s[3]), .Co(co[3]), .A(a1[3]), .B(b[3]), .Ci(co[2]));

Adder U5(.S(s[4]), .Co(co[4]), .A(a1[4]), .B(b[4]), .Ci(co[3]));

Adder U6(.S(s[5]), .Co(co[5]), .A(a1[5]), .B(b[5]), .Ci(co[4]));

Adder U7(.S(s[6]), .Co(co[6]), .A(a1[6]), .B(b[6]), .Ci(co[5]));

Adder U8(.S(s[7]), .Co(Cout), .A(a1[7]), .B(b[7]), .Ci(co[6]));


endmodule
