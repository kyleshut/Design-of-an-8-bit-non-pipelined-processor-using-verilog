//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 03:56:31 AM
// Design Name: 
// Module Name: control
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


module control(opcode,regDst, regWrite, aluOp, aluSrc, memToReg, memRead, memWrite, jump);
input [2:0] opcode;
output reg regDst;
output reg regWrite;
output reg [2:0] aluOp;
output reg aluSrc;
output reg memToReg;
output reg memRead;
output reg memWrite;
output reg jump;
always@(*)
begin
case (opcode)
3'b000:
    begin
    regDst = 0;
    regWrite = 0;
    aluOp = 3'b000;
    aluSrc = 1;
    memToReg = 1; 
    memRead = 1;
    memWrite = 1; 
    jump = 0; 
    end
3'b001:
    begin
    regDst = 0;
    regWrite = 0;
    aluOp = 3'b001;
    aluSrc = 1;
    memToReg = 0; 
    memRead = 0;
    memWrite = 1; 
    jump = 0;
    end
3'b010:
    begin
    regDst = 0;
    regWrite = 0;
    aluOp = 3'b010;
    aluSrc = 0;
    memToReg = 0; 
    memRead = 0;
    memWrite = 0; 
    jump = 1;
    end
3'b011:
    begin
    regDst = 1;
    regWrite = 1;
    aluOp = 3'b011;
    aluSrc = 0;
    memToReg = 0; 
    memRead = 0;
    memWrite = 0; 
    jump = 0; 
    end
    
3'b100:
    begin
    regDst = 0;
    regWrite = 1;
    aluOp = 3'b100;
    aluSrc = 1;
    memToReg = 0; 
    memRead = 0;
    memWrite = 0; 
    jump = 0; 
    end
    
3'b101:
    begin
    regDst = 1;
    regWrite = 1;
    aluOp = 3'b101;
    aluSrc = 0;
    memToReg = 0; 
    memRead = 0;
    memWrite = 0; 
    jump = 0; 
    end
endcase
end

endmodule
