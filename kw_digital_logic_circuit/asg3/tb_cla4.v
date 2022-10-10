`timescale 1ns/100ps
module tb_cla4;
  reg [3:0] tb_a, tb_b; 
  reg tb_ci;
  wire [3:0] tb_s;
  wire tb_co;
  
  cla4 U0_cla4(.a(tb_a), .b(tb_b), .ci(tb_ci), .s(tb_s), .co(tb_co));
  
  initial begin
  //radix = hexadecimal
    tb_a = 0; tb_b = 0; tb_ci = 0;
    #10; tb_a = 4'h1; tb_b = 4'h5; tb_ci = 0;
    #10; tb_a = 4'h3; tb_b = 4'h2; tb_ci = 0;
    #10; tb_a = 4'h6; tb_b = 4'h5; tb_ci = 1;
    #10; tb_a = 4'h4; tb_b = 4'h7; tb_ci = 1;
    #10; tb_a = 4'hA; tb_b = 4'h1; tb_ci = 0;
    #10; tb_a = 4'hF; tb_b = 4'hF; tb_ci = 1;
    #10; $stop;
  end
endmodule
