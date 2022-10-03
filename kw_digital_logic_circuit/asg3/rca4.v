module rca4 (
	input ci,
	input [3:0] a, b,
	output co,
	output [3:0] s
	);
	
	//3 c connects each full adder.
	wire [2:0] c;
	
	fa U0_fa (
		.ci(ci),
		.a (a[0]),
		.b (b[0]),
		.co (c[0]),
		.s (s[0])
		);
	//c_out of the previous full adder becomes c_in of the later full adder.
	fa U1_fa (
		.ci(c[0]),
		.a (a[1]),
		.b (b[1]),
		.co (c[1]),
		.s (s[1])
		);
	fa U2_fa (
		.ci(c[1]),
		.a (a[2]),
		.b (b[2]),
		.co (c[2]),
		.s (s[2])
		);
	fa U3_fa (
		.ci(c[2]),
		.a (a[3]),
		.b (b[3]),
		.co (co),
		.s (s[3])
		);
		
endmodule