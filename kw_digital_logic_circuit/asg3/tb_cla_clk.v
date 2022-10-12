`timescale 1ns/100ps
module tb_cla_clk;

  reg tb_clk, tb_ci;
  reg [31:0] tb_a, tb_b;
  wire [31:0] tb_s;
  wire tb_co;
<<<<<<< HEAD

  cla_clk U0_cla_clk(.clk(clk), .a(tb_a), .b(tb_b), .ci(tb_ci), .s(tb_s), .co_cla(tb_co));
  always #5 clk = ~clk;
=======
>>>>>>> 33d23aa25eaec0d6c1cc30c64f8d0011050ef000
  
  //generate 10 clock signal
  parameter tb_pm = 10;
  cla_clk U0_cla_clk(.clk(tb_clk), .a(tb_a), .b(tb_b), .ci(tb_ci), .s(tb_s), .co(tb_co));
  always #(tb_pm/2) tb_clk = ~tb_clk;
  initial begin
<<<<<<< HEAD
    clk = 1'b1; tb_a = 32'h0; tb_b = 32'h0; tb_ci = 1'b0;
    #10; tb_a = 32'hFFFF_FFFF; tb_b = 32'h0; tb_ci = 1'b1;
    #10; tb_a = 32'h0000_FFFF; tb_b = 32'hFFFF_0000; tb_ci = 1'b0;
    #10; tb_a = 32'h135f_a562; tb_b = 32'h3561_4642; tb_ci = 1'b0;
    #10; $finish;
=======
	//radix = hexadecimal
              tb_clk = 1'b1; tb_a = 32'h0; tb_b = 32'h0; tb_ci = 1'b0;
    #(tb_pm); tb_a = 32'hABAB_BABA; tb_b = 32'h1234_5678; tb_ci = 1'b1;
    #(tb_pm); tb_a = 32'h0000_FFFF; tb_b = 32'hFFFF_0000; tb_ci = 1'b0;
    #(tb_pm); tb_a = 32'h2468_1357; tb_b = 32'h7531_8642; tb_ci = 1'b1;
    #(tb_pm); tb_a = 32'hFEDC_BA98; tb_b = 32'h89AB_CDEF; tb_ci = 1'b0;
    #(tb_pm); tb_a = 32'h135F_A562; tb_b = 32'hEFAB_2445; tb_ci = 1'b1;
    #(tb_pm*2); $stop;
>>>>>>> 33d23aa25eaec0d6c1cc30c64f8d0011050ef000
  end
endmodule
