`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2021 19:34:01
// Design Name: 
// Module Name: fourbit_adder
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
module adder(A, B, SUM);  
input  [7:0] A;  
input  [7:0] B;  
output [7:0] SUM; 
 
  assign SUM = A + B;  
endmodule 

module subtr(A, B, RES);  
input  [7:0] A;  
input  [7:0] B;  
output [7:0] RES; 
 
  assign RES = A - B;  
endmodule 


module ALU (input [7:0] reg1,
			input [7:0] reg2,
			input [2:0] ALUControl,
			output reg [7:0] result
			);
	
    always @(reg1 or reg2 or ALUControl)
		begin
			casex (ALUControl)
				0:  
					result = reg1;
				1:  
					result = reg1 + reg2;
				2:  
					result = reg1 - reg2;
			endcase
			
		end
endmodule
