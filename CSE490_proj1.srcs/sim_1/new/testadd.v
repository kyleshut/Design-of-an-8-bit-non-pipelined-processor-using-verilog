`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////



module testadd();
reg in1, in2;
wire out;

adder test_adder(.A(in1),.B(in2), .SUM(out));

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
