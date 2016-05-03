`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:09:23 04/24/2016
// Design Name:   top
// Module Name:   C:/Users/ydz/Desktop/cod/mips_one_cycle_cpu/test.v
// Project Name:  mips_one_cycle_cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg rst_n;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst_n(rst_n)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst_n = 1;
	end
      always #200 clk = ~clk;
endmodule

