`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2021 20:31:31
// Design Name: 
// Module Name: jump
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


module jump(input[1:0] ALUControl, 
       input [3:0] funct,
       output JRControl
    );
assign JRControl = ({ALUControl,funct}==3'b010) ? 1'b1 : 1'b0;
endmodule

