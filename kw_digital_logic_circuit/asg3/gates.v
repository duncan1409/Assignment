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


//3-input gates

module _or3 (
	input a, b, c,
	output y
	);
	assign y = a | b | c ;
endmodule

module _and3(
	input a, b, c,
	output y
);
	assign y = a & b & c ;
	endmodule

module _xor3 (
	input a, b, c,
	output y
	);
	assign y = ( a & ~b & ~c) | ( ~a & b & ~c) | ( ~a & ~b & c) | a & b & c ;
endmodule
	
//4-input gates
module _or4 (
	input a, b, c, d,
	output y
	);
	assign y = a | b | c | d ;
endmodule

module _and4 (
	input a, b, c, d,
	output y
	);
	assign y = a & b & c & d ;
endmodule

//5-input gates
module _or5 (
	input a, b, c, d, e, 
	output y
	);
	assign y = a | b | c | d | e ;
endmodule

module _and5 (
	input a, b, c, d, e, 
	output y
	);
	assign y = a & b & c & d & e ;
endmodule
