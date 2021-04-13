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
				3'b011: result = reg1 + reg2;
				3'b100: result = reg1 + reg2;
				3'b101: result = reg1 - reg2;
			endcase
		end
endmodule

module JR( input[1:0] ALUControl, 
       input [3:0] funct,
       output JRControl
    );
assign JRControl = ({ALUControl,funct}==3'b010) ? 1'b1 : 1'b0;
endmodule
