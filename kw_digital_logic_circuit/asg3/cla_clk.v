module cla_clk(
  input clk, ci,
  input [31:0] a, b, 
  output [31:0] s, 
  output co
  );

  reg [31:0] reg_a, reg_b, reg_s;
  reg reg_ci, reg_co;
  wire [31:0] wire_s;
  wire wire_co;

  always @ (posedge clk)

  begin
    reg_a <= a;
    reg_b <= b;
    reg_ci <= ci;
    reg_s <= wire_s;
    reg_co <= wire_co;
  end

  cla32 U0_cla32(.a(reg_a), .b(reg_b), .ci(reg_ci), .s(wire_s), .co(wire_co));
  assign s = reg_s;
  assign co = reg_co;
endmodule