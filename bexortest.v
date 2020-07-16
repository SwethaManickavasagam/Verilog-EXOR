`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:46:44 07/04/2020
// Design Name:   bexor
// Module Name:   D:/bexor.v/bexortest.v
// Project Name:  bexor.v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bexor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bexortest;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	bexor uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
	   $monitor("a=%b b=%b y=%b",a,b,y);
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a=1;b=1;
		#10 a=0;b=1;
        
		// Add stimulus here

	end
      
endmodule

