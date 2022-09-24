`timescale 1ns/100ps

module tb_xor2;
	
	reg tb_a, tb_b;
	wire tb_y; 
	
	//named mapping
	xor2 U0_xor2(
		.d0 (tb_a),
		.d1 (tb_b),
		.y (tb_y)
		);
	
	initial begin
		 tb_a = 0; tb_b = 0;
	#10;tb_a = 0; tb_b = 1;
	#10;tb_a = 1; tb_b = 0;
	#10;tb_a = 1; tb_b = 1;
	#10;
	end
endmodule