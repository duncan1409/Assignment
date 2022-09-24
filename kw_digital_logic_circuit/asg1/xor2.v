module xor2 (
	input d0, d1,
	output y
	);
	
	_xor2 xr2(
	.a (d0),
	.b (d1),
	.y (y)
	);
	
endmodule

	
	