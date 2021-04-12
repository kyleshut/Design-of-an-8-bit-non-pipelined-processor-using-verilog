`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2021 16:37:35
// Design Name: 
// Module Name: Add
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
 
  assign SUM = A ^ B;  
endmodule 

