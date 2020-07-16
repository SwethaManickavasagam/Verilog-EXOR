`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:29 07/04/2020 
// Design Name: 
// Module Name:    bexor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bexor(
    input a,
    input b,
    output reg y
    );
	 always @ (a or b) begin
	    if (a==0 & b==0) begin
		 y=0;
		 end
       else if (a==1 & b==1) begin 
       y=0;
		 end
       else
       y=1;
	end

		
	 


endmodule
