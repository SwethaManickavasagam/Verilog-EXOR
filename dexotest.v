`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:31:40 07/04/2020
// Design Name:   dexor
// Module Name:   D:/dexor.v/dexotest.v
// Project Name:  dexor.v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dexor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dexotest;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	dexor uut (
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
		#5 a=0;
		b=0;
		#10 b=1;
		#5 a=1;
        
		// Add stimulus here

	end
      
endmodule

