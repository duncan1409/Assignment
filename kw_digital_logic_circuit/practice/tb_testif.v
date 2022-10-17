module tb();

wire val1, val2, my_val;

assign val1 = (1) ? 1:0;
assign val2 = (0) ? 1:0;
assign my_val = (val1) ? 1:0;

initial
begin
    #1;
    $display("%d %d %d",val1, val2, my_val);
end

endmodule