module cal_flags4(op, result, co_add, c3_add, c, n, z, v);
  input [2:0] op;
  input [3:0] result;
  input co_add, c3_add;
  output c, n, z, v;

  assign c = (op[2:1] != 2'b11) ? 1'b0 : co_add;
  assign n = result[3];
  assign z = (result == 4'b0) ? 1'b1 : 1'b0;
  assign v = (op[2:1] != 2'b11) ? 1'b0 : co_add ^ c3_add;
  
endmodule
