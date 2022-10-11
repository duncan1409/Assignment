module alu4(a, b, op, result, c, n, z, v);
  input [3:0] a, b;
  input [2:0] op;
  output [3:0] result;
  output c, n, z, v;

  wire [3:0] not_a, not_b, and_ab, or_ab, xor_ab, xnor_ab;
  wire [3:0] w_add_b, w_add;
  wire c3_add, co_add;

  _inv_4bits U0_inv_4bits (.a(a), .y(not_a));
  _inv_4bits U1_inv_4bits (.a(b), .y(not_b));
  _and2_4bits U2_and2_4bits (.a(a), .b(b), .y(and_ab));
  _or2_4bits U3_or2_4bits (.a(a), .b(b), .y(or_ab));
  _xor2_4bits U4_xor2_4bits (.a(a), .b(b), .y(xor_ab));
  _xnor2_4bits U5_xnor2_4bits (.a(a), .b(b), .y(xnor_ab));
  

  //if operate subtraction... generate not_b
  mx2_4bits U6_mux_b_4bits (.d0(b), .d1(not_b), .s(op[0]), .y(w_add_b));
  //if operate subtraction... input carry-in 
  cla4_ov U7_cla4_ov (.a(a), .b(w_add_b), .ci(op[0]), .s(w_add), .c3(c3_add), .co(co_add));
  //logic module
  mx8_4bits U7_mx8_4bits (.a(not_a), .b(not_b), .c(and_ab), .d(or_ab), .e(xor_ab), .f(xnor_ab), .g(w_add), .h(w_add), .s2(op[2]), .s1(op[1]), .s0(op[0]), .y(result));
  //show flags
  cal_flags4 U8_cal_flags4 (.op(op), .result(result), .co_add(co_add), .c3_add(c3_add), .c(c), .n(n), .z(z), .v(v));

endmodule
