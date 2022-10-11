module cal_flags32(op, result, co_add, co_prev_add, c, n, z, v);
  input [2:0] op;
  input [31:0] result;
  input co_add, co_prev_add;
  output c, n, z, v;

  //if opcode 110 or 111 (adder and subtractor), print 0, if not, print co_add
  assign c = (op[2:1] != 2'b11) ? 1'b0 : co_add;
  //if sign bit = 1, print 1
  assign n = result[31];
  //if result = 0000, print 1
  assign z = (result == 32'b0) ? 1'b1 : 1'b0;
  //if opcode 110 or 111 (adder and subtractor), print 0, if not, print co_add 
  assign v = (op[2:1] != 2'b11) ? 1'b0 : co_add ^ co_prev_add;

endmodule