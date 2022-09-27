module fa (
	input ci, a, b,
	output co, s
	);
	
	wire w0, w1, w2 ;
	
	_and2 ad20 (
		.a (ci),
		.b (b),
		.y (w0)
	);
	_and2 ad21 (
		.a (a),
		.b (b),
		.y (w1)
	);
	_and2 ad22 (
		.a (ci),
		.b (a),
		.y (w2)
	);
	
	//I made 3-input XOR gate and 3-input OR gate.
	_or3 or30 (
		.a (w0),
		.b (w1),
		.c (w2),
		.y (co)
	);
	
	_xor3 xr30 (
		.a (ci),
		.b (a),
		.c (b),
		.y (s)
	);
	
endmodule

	
	