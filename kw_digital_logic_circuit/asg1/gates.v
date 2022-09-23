module _inv (
	input a,
	output y
	);
	assign y = ~ a;
endmodule

module _nand2 (
	input a, b,
	output y
	);
	assign y = ~ (a & b);
endmodule

module _and2(a,b,y);
	input a,b;
	output y;
	assign y=a&b;
endmodule
