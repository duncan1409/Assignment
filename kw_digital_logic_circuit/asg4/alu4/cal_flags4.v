module cal_flags4(op, result, co_add, c3_add, c, n, z, v);
  input [2:0] op;
  input [3:0] result;
  input co_add, c3_add;
  output c, n, z, v;
  
  //if opcode 110 or 111 (adder and subtractor), print 0, if not, print co_add
  assign c = (op[2:1] != 2'b11) ? 1'b0 : co_add;
  //if sign bit = 1, print 1
  assign n = result[3];
  //if result = 0000, print 1
  assign z = (result == 4'b0) ? 1'b1 : 1'b0;
  //if opcode 110 or 111 (adder and subtractor), print 0, if not, print co_add 
  assign v = (op[2:1] != 2'b11) ? 1'b0 : co_add ^ c3_add;
  
endmodule
