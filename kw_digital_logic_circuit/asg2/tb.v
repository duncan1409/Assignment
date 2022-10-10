`timescale 1ns/100ps

module tb;
	
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
		 tb_ci=1'b0; tb_a=1'b0; tb_b=1'b0; 
	#10 tb_ci=1'b0; tb_a=1'b0; tb_b=1'b1;
	#10 tb_ci=1'b0; tb_a=1'b1; tb_b=1'b0;
	#10 tb_ci=1'b0; tb_a=1'b1; tb_b=1'b1;
	#10 tb_ci=1'b1; tb_a=1'b0; tb_b=1'b0;
	#10 tb_ci=1'b1; tb_a=1'b0; tb_b=1'b1;
	#10 tb_ci=1'b1; tb_a=1'b1; tb_b=1'b0;
	#10 tb_ci=1'b1; tb_a=1'b1; tb_b=1'b1; 
	#10 $stop;
	#10;
	end
endmodule