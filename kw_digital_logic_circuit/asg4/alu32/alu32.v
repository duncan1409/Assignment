module alu32(a, b, op, result, c, n, z, v);
  input [31:0] a, b;
  input [2:0] op;
  output [31:0] result;
  output c, n, z, v;

  wire [31:0] w_add_b, w_add;
  wire [31:0] not_a, not_b, and_ab, or_ab, xor_ab, xnor_ab;
  wire co_prev, co_add;

  _inv_32bits U0_inv_32bits (.a(a), .y(not_a));
  _inv_32bits U1_inv_32bits (.a(b), .y(not_b));
  _and2_32bits U2_and2_32bits (.a(a), .b(b), .y(and_ab));
  _or2_32bits U3_or2_32bits (.a(a), .b(b), .y(or_ab));
  _xor2_32bits U4_xor2_32bits (.a(a), .b(b), .y(xor_ab));
  _xnor2_32bits U5_xnor2_32bits (.a(a), .b(b), .y(xnor_ab));

  //if operate subtraction... generate not_b
  mx2_32bits U6_mux_b (.d0(b), .d1(not_b), .s(op[0]), .y(w_add_b));
  //if operate subtraction... input carry-in 
  cla32_ov U7_adder (.a(a), .b(w_add_b), .ci(op[0]), .s(w_add), . co_prev(co_prev), .co(co_add));
  //logic module
  mx8_32bits U7_mx8_32bits (.a(not_a), .b(not_b), .c(and_ab), .d(or_ab), .e(xor_ab), .f(xnor_ab), .g(w_add), .h(w_add),.s2(op[2]), .s1(op[1]), .s0(op[0]), .y(result));
  //show flags
  cal_flags32 U8_cal_flags32 (.op(op), .result(result), .co_add(co_add), .co_prev_add(co_prev), .c(c), .n(n), .z(z), .v(v));

endmodule
