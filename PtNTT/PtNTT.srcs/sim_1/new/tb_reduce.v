`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2020 11:21:11 PM
// Design Name: 
// Module Name: tb_reduce
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


module tb_reduce();
reg clk = 1;
always #5 clk = ~clk;

reg [31:0] in_m;
wire [12:0] out_m;

mont_reduce dutm(.in_a(in_m), .out_a(out_m));

reg [15:0] in_b;
wire [15:0] out_b;

barr_reduce dutb(.in_a(in_b), .out_a(out_b));

initial begin
		repeat (10) @(posedge clk);
		in_m <= 32'h4587d57c;
		in_b <= 16'h2fff;
		repeat (70) @(posedge clk);
		in_m <= 32'h00000057;
		in_b <= 16'h0032;
		
		$finish;
	end

endmodule
