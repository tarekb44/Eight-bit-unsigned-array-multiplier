module ArrayRow(
	input [7:0] a,
	input b,
	input [6:0] c,
	output [6:0] sum,
	output sum_real,
	output c_out
);
	wire w1;
	wire [6:0] w2;
	and(w1, a[0], b);
	HalfBitAdder adder(
		w1,
		c[0],
		sum_real,
		w2[0]
	);
	
	ArrayCell Cell1(
		a[1],
		b,
		c[1],
		w2[0],
		w2[1],
		sum[0]
	);	

	ArrayCell Cell2(
		a[2],
		b,
		c[2],
		w2[1],
		w2[2],
		sum[1]
	);	
	
	ArrayCell Cell3(
		a[3],
		b,
		c[3],
		w2[2],
		w2[3],
		sum[2]
	);
	ArrayCell Cell4(
		a[4],
		b,
		c[4],
		w2[3],
		w2[4],
		sum[3]
	);	
	ArrayCell Cell5(
		a[5],
		b,
		c[5],
		w2[4],
		w2[5],
		sum[4]
	);	
	ArrayCell Cell6(
		a[6],
		b,
		c[6],
		w2[5],
		w2[6],
		sum[5]
	);	
	
	wire w3;
	and(w3, a[7], b);
	HalfBitAdder adder2(
		w3,
		w2[6],
		sum[6],
		c_out
	);	
	
endmodule
