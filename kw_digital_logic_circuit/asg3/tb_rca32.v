//for rca32
`timescale 1ns/100ps

module tb_rca32;
	
	reg tb_ci;
	reg [31:0] tb_a, tb_b;
	wire tb_co;
	wire [31:0] tb_s;
	
	//named mapping
	rca32 U0_rca32(.ci (tb_ci), .a (tb_a), .b (tb_b), .co (tb_co), .s (tb_s));
	
	initial begin
	//radix = hexadecimal
         tb_a = 32'h0; tb_b = 32'h0; tb_ci = 1'b0;
    #10; tb_a = 32'hABAB_BABA; tb_b = 32'h1234_5678; tb_ci = 1'b1;
    #10; tb_a = 32'h0000_FFFF; tb_b = 32'hFFFF_0000; tb_ci = 1'b0;
    #10; tb_a = 32'h2468_1357; tb_b = 32'h7531_8642; tb_ci = 1'b1;
    #10; tb_a = 32'hFEDC_BA98; tb_b = 32'h89AB_CDEF; tb_ci = 1'b0;
    #10; tb_a = 32'h135F_A562; tb_b = 32'hEFAB_2445; tb_ci = 1'b1;
    #10; $stop;
	end
endmodule
