module ha (
	input a, b,
	output co, s
	);
	
	_and2 U0_and2 (
		.a(a),
		.b(b),
		.y(co)
		);
	
	_or2 U1_or2 (
		.a(a),
		.b(b),
		.y(s)
		);
	
endmodule
