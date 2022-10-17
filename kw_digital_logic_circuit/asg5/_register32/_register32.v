module _register32 (clk, d, q);
  input clk;
  input [31:0] d;
  output [31:0] q;

  _register8 U0_register8 (.clk(), .d(), .q());
  _register8 U1_register8 (.clk(), .d(), .q());
  _register8 U2_register8 (.clk(), .d(), .q());
  _register8 U3_register8 (.clk(), .d(), .q());

endmodule