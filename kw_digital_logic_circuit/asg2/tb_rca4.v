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
	//case 1. ci = 0
	tb_ci = 0; tb_a = 4'b0000; tb_b = 4'b0101; //including 0000
	#10;tb_ci = 0; tb_a = 4'b0011; tb_b = 4'b0101; //not out of the range 
	#10;tb_ci = 0; tb_a = 4'b1011; tb_b = 4'b1101; //out of the range
	
	//case 2. ci = 1
	#10;tb_ci = 1; tb_a = 4'b0000; tb_b = 4'b0010; //including 0000
	#10;tb_ci = 1; tb_a = 4'b1100; tb_b = 4'b0010; //not out of the range
	#10;tb_ci = 1; tb_a = 4'b1100; tb_b = 4'b1010; //out of the range
	#10;
	$finish;
	end
endmodule
