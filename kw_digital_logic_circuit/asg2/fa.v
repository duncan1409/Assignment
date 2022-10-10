module fa(a, b, ci, s, co) ; 
	input a, b, ci ; 
	output s, co ;

	wire w0_s, w0_co, w1_co ;

	ha U0_ha(.a(a), .b(b), .s(w0_s), .co(w0_co));
	ha U1_ha(.a(w0_s), .b(ci), .s(s), .co(w1_co));
	_or2 U2_or2(.a(w0_co), .b(w1_co), .y(co)); 

endmodule

	