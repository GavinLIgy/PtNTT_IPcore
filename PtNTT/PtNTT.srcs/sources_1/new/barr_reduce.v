`timescale 1ns / 1ps
`include "params.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2020 10:38:15 PM
// Design Name: 
// Module Name: barr_reduce
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Barrett reduction; given a 16-bit integer a, computes
//             16-bit integer congruent to a mod q in {0,...,11768}
// 
// Dependencies: uint16_t a: input unsigned integer to be reduced
//               Return: unsigned integer in {0,...,11768} congruent to a modulo q.
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module barr_reduce(
    input [15:0] in_a,
    output [15:0] out_a
    );
    
    wire [31:0] tmp1;
    wire [31:0] tmp2;
    wire [31:0] tmp3;
    wire [31:0] tmp4;
    
    assign tmp1 = in_a >> 13;
    assign tmp2 = tmp1 * `NTT_Q;
    assign out_a = in_a - tmp2;
    
endmodule
