module _dff_rs (clk, set_n, reset_n, d, q);
  input clk, set_n, reset_n, d;
  output q;
  
  wire w_d1, w_d2;

  _or2 U0_or2(.a(), .b(), .y());
  _and2 U1_and2(.a(), .b(), .y());
  _dff U2_dff(.clk(), .d(), .q()), .q_bar();

endmodule
