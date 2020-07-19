//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2020 10:39:30 PM
// Design Name: 
// Module Name: params
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

`define NTT_Q 3'hd01// 4'd3329
`define NTT_N 3'h100// 3'd256

`define NTT_Qinv 4'h1dff// 4'd7679 // -inverse_mod(q,2^18)
`define rlog 18 // log_2(r), r = 2^18
