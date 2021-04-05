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