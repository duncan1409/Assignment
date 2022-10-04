`timescale 1ns/100ps
module tb_cla_clk;
  reg [31:0] tb_a, tb_b; 
  reg clk, tb_ci;
  wire [31:0] tb_s;
  wire tb_co;

  cla_clk U0_cla_clk(.clk(clk), .a(tb_a), .b(tb_b), .ci(tb_ci), .s(tb_s), .co_cla(tb_co));
  always #5 clk = ~clk;
  
  initial begin
    clk = 1'b1; tb_a = 32'h0; tb_b = 32'h0; tb_ci = 1'b0;
    #10; tb_a = 32'hFFFF_FFFF; tb_b = 32'h0; tb_ci = 1'b1;
    #10; tb_a = 32'h0000_FFFF; tb_b = 32'hFFFF_0000; tb_ci = 1'b0;
    #10; tb_a = 32'h135f_a562; tb_b = 32'h3561_4642; tb_ci = 1'b0;
    #10; $finish;
  end
endmodule