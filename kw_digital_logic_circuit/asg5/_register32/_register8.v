module _register8 (clk, d, q);
  input clk;
  input [7:0] d;
  output [7:0] q;

  _dff U0_dff (.clk(), .d(), .q(), .q_bar());
  _dff U1_dff (.clk(), .d(), .q(), .q_bar());
  _dff U2_dff (.clk(), .d(), .q(), .q_bar());
  _dff U3_dff (.clk(), .d(), .q(), .q_bar());
  _dff U4_dff (.clk(), .d(), .q(), .q_bar());
  _dff U5_dff (.clk(), .d(), .q(), .q_bar());
  _dff U6_dff (.clk(), .d(), .q(), .q_bar());
  _dff U7_dff (.clk(), .d(), .q(), .q_bar());

endmodule