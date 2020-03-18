module ArrayCell(
	input a,
	input b,
	input c,
	input c_in,
	
	output c_out,
	output sum
);


	wire PPX;
	and (PPX, a, b);
	FullBitAdder adder(
		PPX,
		c,
		c_in,
		sum,
		c_out
	);
	
	endmodule