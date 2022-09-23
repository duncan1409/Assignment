module _inv (
	input a,
	output y
	);
	assign y = ~a;
endmodule

module _and2 (
	input a, b,
	output y
	);y = a & b;
endmodule


module _nand2 (
	input a, b,
	output y
	);
	assign y = ~(a & b);
endmodule

module _or2 (
	input a, b,
	output y
	);
	assign y = a | b;
endmodule

module _nor2 (
	input a, b,
	output y
	);
	assign y = ~(a | b);
endmodule

module _xor2 (
	input a, b,
	output y
	);
	assign y = ( ~a & b) | ( a & ~b);
endmodule

module _xnor2 (
	input a, b,
	output y
	);
	assign y = ~(( ~a & b) | ( a & ~b));
endmodule