module clb4(
    input ci,
    input [3:0]a, b,
    output c1, c2, c3, co
);
wire [3:0] g, p;
wire w0_c1;
wire w0_c2, w1_c2;
wire w0_c3, w1_c3, w2_c3;
wire w0_co, w1_co, w2_co, w3_co;

//Generate

//Propagate

//c1 = g[0] | (p[0] & ci);

// c2 = g[1] | (p[1] & g[0]) | (p[1] & p[0] & ci);

// c3 = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & ci);

// co = g[3] 
// | (p[3] & g[2])
// | (p[3] & p[2] & g[1])
// | (p[3] & p[2] & p[1] & g[0])
// | (p[3] & p[2] & p[1] & p[0] & ci)

endmodule