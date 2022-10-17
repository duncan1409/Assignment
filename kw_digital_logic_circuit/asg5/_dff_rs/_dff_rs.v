module _dff_rs (clk, set_n, reset_n, d, q);
  input clk, set_n, reset_n, d;
  output q;
  
  wire w_d1, w_d2;

  _or2 U0_or2(.a(d), .b(set_n), .y(w_d1));
  _and2 U1_and2(.a(w_d1), .b(reset_n), .y(w_d2));
  _dff U2_dff(.clk(clk), .d(w_d2), .q(q)), .q_bar();

endmodule
