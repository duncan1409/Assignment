module fa_v2 (
	input ci, a, b,
	output s
	);
	
	//I made 3-input XOR gate and 3-input OR gate.
	
	_xor3 xr30 (
		.a (ci),
		.b (a),
		.c (b),
		.y (s)
	);
	
endmodule