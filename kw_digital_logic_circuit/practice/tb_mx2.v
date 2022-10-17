`timescale 1ns/100ps

module tb_mx2;
	
	reg tb_a, tb_b, tb_s;
	wire tb_y; 
	
	mx2 U0_mx2(
		.d0 (tb_a),
		.d1 (tb_b),
		.s (tb_s),
		.y (tb_y)
		);
	
	initial begin
			tb_s=0; tb_a = 1; tb_b = 0;
	#10;	tb_s=0; tb_a = 0; tb_b = 1;
	#10;	tb_s=1; tb_a = 1; tb_b = 0;
	#10;	tb_s=1; tb_a = 0; tb_b = 1;
	#10;
	end
endmodule
