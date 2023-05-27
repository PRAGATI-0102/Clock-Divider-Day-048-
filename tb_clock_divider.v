`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2023 10:21:09 PM
// Design Name: 
// Module Name: tb_clock_divider
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


module tb_clock_divider();

	reg clk;
	reg rst;

	wire divideby2;
	wire divideby4;
	wire divideby8;
	wire divideby16;
	wire divideby32;

        clock_divider dut (
		.clk(clk), 
		.rst(rst), 
		.divideby2(divideby2), 
		.divideby4(divideby4), 
		.divideby8(divideby8), 
		.divideby16(divideby16), 
		.divideby32(divideby32)
	);

	initial 
	begin
		clk = 0;
		rst = 0;
    end
    
    always
    #10 clk=~clk;
    
    initial
    #1000 $finish;

endmodule
