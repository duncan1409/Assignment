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

//4bits logic gates
module _inv_4bits(
	input [3:0] a,
	output [3:0] y
);
	assign y = ~ a;
endmodule

module _and2_4bits(
	input [3:0] a, b,
	output [3:0] y
);
	assign y = a & b ;
endmodule

module _or2_4bits(
	input [3:0] a, b,
	output [3:0] y
);
	assign y = a | b ;
endmodule

module _xor2_4bits(
	input [3:0] a, b,
	output [3:0] y
);
	assign (~ a & b) | (a & ~ b) ;
endmodule

module _xnor2_4bits(
	input [3:0] a, b,
	output [3:0] y
);
	assign ~ ((~ a & b) | (a & ~ b)) ;
endmodule

//32bits logic gates
module _inv_4bits(
	input [31:0] a,
	output [31:0] y
);
	assign y = ~ a;
endmodule

module _and2_4bits(
	input [31:0] a, b,
	output [31:0] y
);
	assign y = a & b ;
endmodule

module _or2_4bits(
	input [31:0] a, b,
	output [31:0] y
);
	assign y = a | b ;
endmodule

module _xor2_4bits(
	input [31:0] a, b,
	output [31:0] y
);
	assign (~ a & b) | (a & ~ b) ;
endmodule

module _xnor2_4bits(
	input [31:0] a, b,
	output [31:0] y
);
	assign ~ ((~ a & b) | (a & ~ b)) ;
endmodule
