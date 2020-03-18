module FullBitAdder(
	input a,
	input b,
	input c_in,
	
	output sum,
	output c_out
);

	wire w1;
	wire w2;
	wire w3;
	
	xor(w1, a, b);
	xor(sum, w1, c_in);
	and(w2, a, b);
	and(w3, c_in, w1);
	or(c_out, w2, w3);
	
endmodule
