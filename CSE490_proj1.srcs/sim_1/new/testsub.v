`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2021 00:24:07
// Design Name: 
// Module Name: testsub
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



module testsub();
reg in1, in2;
wire out;

subtr test_sub(.A(in1),.B(in2), .RES(out));

initial begin
in1 = 0;
in2 = 0;
#5
in1 = 1;
in2 = 0;
#5;
in1 = 1;
in2 = 1;
#5;
end
endmodule

