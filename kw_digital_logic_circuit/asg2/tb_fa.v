`timescale 1ns/100ps

module tb_fa;
	
	reg tb_ci, tb_a, tb_b;
	wire tb_co, tb_s;
	
	//named mapping
	fa U0_fa(
		.ci (tb_ci),
		.a (tb_a),
		.b (tb_b),
		.co (tb_co),
		.s (tb_s)
		);
	
	initial begin
		 tb_ci = 0; tb_a = 0; tb_b = 0;
	#10;tb_ci = 0; tb_a = 0; tb_b = 1;
	#10;tb_ci = 0; tb_a = 1; tb_b = 0;
	#10;tb_ci = 0; tb_a = 1; tb_b = 1;
	#10;tb_ci = 1; tb_a = 0; tb_b = 0;
	#10;tb_ci = 1; tb_a = 0; tb_b = 1;
	#10;tb_ci = 1; tb_a = 1; tb_b = 0;
	#10;tb_ci = 1; tb_a = 1; tb_b = 1;
	#10;
	end
endmodule
