`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2021 16:35:33
// Design Name: 
// Module Name: Alu
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


module Alu (reg1, reg2,ALUControl, result);
  
  input [7:0] reg1;
  input [7:0] reg2;
  input [2:0] ALUControl;
  output reg [7:0] result;
    always @(*)
		begin
			casex (ALUControl)
			    'b000:
			         result = reg1 + reg2;
			    'b001:
			         result = reg1 + reg2;
				'b011:  
					result = reg1 + reg2;
				'b100:
				    result = reg1 + reg2;
				'b101:  
					result = reg1 - reg2;
			endcase
		end
endmodule
