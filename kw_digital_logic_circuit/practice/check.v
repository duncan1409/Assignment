module moduleName (a, b);
input [3:0] a;

initial begin
  #1;
  display("%d",a[0]);
end
endmodule