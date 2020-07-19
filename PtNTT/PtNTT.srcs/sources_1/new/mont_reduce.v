`timescale 1ns / 1ps
`include "params.v"

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2020 10:38:15 PM
// Design Name: 
// Module Name: mont_reduce
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Montgomery reduction; given a 32-bit integer a, computes
//             16-bit integer congruent to a * R^-1 mod q, 
//             where R=2^18 (see value of rlog)
// 
// Dependencies: uint32_t a: input unsigned integer to be reduced; has to be in {0,...,2281446912}
//               Return: unsigned integer in {0,...,2^13-1} congruent to a * R^-1 modulo q.
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mont_reduce(
    input [31:0] in_a,
    output [12:0] out_a
    );
    wire [`rlog-1:0] tmp1;
    wire [17:0] tmp2;
    wire [29:0] tmp3;
    wire [31:0] tmp4;
    
    assign tmp1 = in_a * `NTT_Qinv;
    //assign tmp2 = tmp1 [`rlog-1:0];
    assign tmp3 = tmp1 * `NTT_Q;
    assign tmp4 = in_a + tmp3;
    
    assign out_a = tmp4[31:19];
    
endmodule
