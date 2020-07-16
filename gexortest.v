`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:27:08 07/04/2020
// Design Name:   gexor
// Module Name:   D:/gexor.v/gexortest.v
// Project Name:  gexor.v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gexor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gexortest;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	gexor uut (
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
		a=1;
		#10 b=1;
		#10 a=0;
		#15 a=1;
		b=0;
		#10 a=0;
		b=0;
		#10 b=1;
		
        
		// Add stimulus here

	end
      
endmodule

