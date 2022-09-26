`timescale 1ns/100ps

module tb_rca4;
	
	reg tb_ci;
	reg [3:0] tb_a, tb_b;
	wire tb_co;
	wire [3:0] tb_s;
	
	//named mapping
	rca4 U0_rca4(
		.ci (tb_ci),
		.a (tb_a),
		.b (tb_b),
		.co (tb_co),
		.s (tb_s)
		);
	
	initial begin
	
	{tb_ci, tb_a, tb_b} =$random(); #(10) $display("%d %d %d %d %d", tb_ci, tb_a, tb_b, tb_s, tb_co );
	#(10){tb_ci, tb_a, tb_b} =$random(); #(10) $display("%d %d %d %d %d", tb_ci, tb_a, tb_b, tb_s, tb_co );
	#(10){tb_ci, tb_a, tb_b} =$random(); #(10) $display("%d %d %d %d %d", tb_ci, tb_a, tb_b, tb_s, tb_co );
	#(10){tb_ci, tb_a, tb_b} =$random(); #(10) $display("%d %d %d %d %d", tb_ci, tb_a, tb_b, tb_s, tb_co );
	#(10){tb_ci, tb_a, tb_b} =$random(); #(10) $display("%d %d %d %d %d", tb_ci, tb_a, tb_b, tb_s, tb_co );
	#(10){tb_ci, tb_a, tb_b} =$random(); #(10) $display("%d %d %d %d %d", tb_ci, tb_a, tb_b, tb_s, tb_co );
	#(10){tb_ci, tb_a, tb_b} =$random(); #(10) $display("%d %d %d %d %d", tb_ci, tb_a, tb_b, tb_s, tb_co );
	#(10) $finish;
	end
endmodule
