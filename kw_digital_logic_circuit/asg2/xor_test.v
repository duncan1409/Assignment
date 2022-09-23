`timescale 1ns/100ps

module tb_mx2;
	
	reg tb_a, tb_b;
	wire tb_y; 
	
	//named mapping
	xor2 U0_xor2(
		.a (tb_a),
		.b (tb_b),
		.y (tb_y)
		);
	
	initial begin
		 tb_a = 1; tb_b = 0;
	#10;tb_a = 0; tb_b = 1;
	#10;tb_a = 1; tb_b = 0;
	#10;tb_a = 0; tb_b = 1;
	#10;
	end
endmodule