`timescale 1ns/100ps
module tb_alu4;
  reg [3:0] tb_a, tb_b;
  reg [2:0] tb_op;
  wire [3:0] tb_result;
  wire tb_c, tb_n, tb_z, tb_v;
  
  alu4 U0_alu4(.a(tb_a), .b(tb_b), .op(tb_op), .result(tb_result), .c(tb_c), .n(tb_n), .z(tb_z), .v(tb_v));

  initial begin
  //not a
  tb_a = 4'h0; tb_b = 4'h0; tb_op = 3'b000; #10;
  tb_a = 4'h5; #10;
  //not b
  tb_b = 4'h3; tb_op = 3'h2; #10;
  //and
  tb_a = 4'h2; tb_b = 4'h3; tb_op = 3'b010; #10;
  //or
  tb_a = 4'h5; tb_b = 4'h3; tb_op = 3'b011; #10;
  //xor
  tb_a = 4'h3; tb_b = 4'h5; tb_op = 3'b100; #10;
  //xnor
  tb_op = 3'b101; #10;
  //addition
  tb_a = 4'h0; tb_b = 4'h1; tb_op = 3'b110; #10;
  tb_a = 4'hf; tb_b = 4'hf; #10;
  tb_a = 4'h4; tb_b = 4'h3; #10;
  //subtraction
  tb_a = 4'hf; tb_b = 4'h5; tb_op = 3'b111; #10;
  tb_a = 4'h2; tb_b = 4'h5; #10;
  tb_a = 4'h3; tb_b = 4'hb; #10;
  $stop;
  end
endmodule