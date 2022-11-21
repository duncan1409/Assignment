module moduleName (clk, reset_n, multiplier, multiplicand, op_start, op_clear, op_done, result);
	input clk, reset_n;
	input [63:0] multiplier, multiplicand;
	input op_start, op_clear;
	output op_done;
	output [127:0] result;

	
endmodule