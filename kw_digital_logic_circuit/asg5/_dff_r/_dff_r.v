module _dff_r (clk, reset_n, d, q);
  input clk, reset_n, d;
  output w_d;

  wire w_d;

  _and2 U0_and2(.a(), .b(), .y());
  _dff U1_dff(.clk(), .d(), .q(), .q_bar());
endmodule