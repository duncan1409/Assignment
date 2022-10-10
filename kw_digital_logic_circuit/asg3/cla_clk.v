module cla_clk (a, b, ci, s, co, clk);
  input clk, ci;
  input [31:0] a, b; 
  output co;
  output [31:0] s;

  //wire and register
  reg [31:0] reg_a, reg_b, reg_s;
  reg reg_ci, reg_co;
  wire [31:0] w0_s;
  wire w0_co;

  //we use "always" to generate clock signal
  always @ (posedge clk)

  begin
    reg_a <= a;
    reg_b <= b;
    reg_ci <= ci;
    reg_s <= w0_s;
    reg_co <= w0_co;
  end

  cla32 U0_cla32 (.a(reg_a), .b(reg_b), .ci(reg_ci), .s(w0_s), .co(w0_co));
  
  assign s = reg_s;
  assign co = reg_co;
  
endmodule