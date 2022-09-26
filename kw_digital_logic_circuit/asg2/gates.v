module _inv (
	input a,
	output y
	);
	assign y = ~a;
endmodule

module _and2 (
	input a, b,
	output y
	);
	assign y = a & b;
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
	assign y = ~( ~a & b |  a & ~b);
endmodule


//3-input

module _or3 (
	input a, b, c,
	output y
	);
	assign y = a | b | c ;
endmodule

module _xor3 (
	input a, b, c,
	output y
	);
	assign y = ( a & ~b & ~c) | ( ~a & b & ~c) | ( ~a & ~b & c) | a & b & c ;
endmodule
