`timescale 1ns/100ps
module tb_alu32;
  reg [31:0] tb_a, tb_b;
  reg [2:0] tb_op;
  wire [31:0] tb_result;
  wire tb_c, tb_n, tb_z, tb_v;
  
  alu32 U0_alu32(.a(tb_a), .b(tb_b), .op(tb_op), .result(tb_result), .c(tb_c), .n(tb_n), .z(tb_z), .v(tb_v));

  initial begin
  //not a
  tb_a = 32'h0; tb_b = 32'h0; tb_op = 3'b000; #10;
  tb_a = 32'h5; #10;
  //not b
  tb_b = 32'hffff_ffff; tb_op = 3'h2; #10;
  //and
  tb_a = 32'h2132_4252; tb_b = 32'h1111_1111; tb_op = 3'b010; #10;
  //or
  tb_a = 32'h5244_2438; tb_b = 32'h3245_2847; tb_op = 3'b011; #10;
  //xor
  tb_a = 32'hAAAA_AAAA; tb_b = 32'hBBBB_BBBB; tb_op = 3'b100; #10;
  //xnor
  tb_op = 3'b101; #10;
  //addition
  tb_a = 32'h0; tb_b = 32'h1; tb_op = 3'b110; #10;
  tb_a = 32'hffff_ffff; tb_b = 32'hffff_ffff; #10;
  tb_a = 32'h3214_3432; tb_b = 32'h3356_1244; #10;
  //subtraction
  tb_a = 32'hffff_ffff; tb_b = 32'hAAAA_AAAA; tb_op = 3'b111; #10;
  tb_a = 32'h2255_2442; tb_b = 32'h2255_2442; #10;
  tb_a = 32'h0000_0001; tb_b = 32'h0; #10;
  $stop;
  end
endmodule