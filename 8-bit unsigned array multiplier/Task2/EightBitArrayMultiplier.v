module EightBitArrayMultiplier(
	input [7:0] a,
	input [7:0] b,
	
	output [15:0] sum
);
	and(sum[0], a[0], b[0]);
	wire [6:0] w0;
	and(w0[0], a[1], b[0]);
	and(w0[1], a[2], b[0]);
	and(w0[2], a[3], b[0]);
	and(w0[3], a[4], b[0]);
	and(w0[4], a[5], b[0]);
	and(w0[5], a[6], b[0]);
	and(w0[6], a[7], b[0]);

	wire [6:0] w1;
	wire wc1;
		
	ArrayRow	row1(
	a[7:0],
	b[1],
	w0[6:0],
	w1[6:0],
	sum[1],
	wc1
	);
	
	wire [6:0] w2;
	wire wc2;
	ArrayRow_type2	row2(
	a[7:0],
	b[2],
	w1[6:0],
	wc1,
	w2[6:0],
	sum[2],
	wc2
	);
	

	wire [6:0] w3;
	wire wc3;
	ArrayRow_type2	row3(
	a[7:0],
	b[3],
	w2[6:0],
	wc2,
	w3[6:0],
	sum[3],
	wc3
	);
	
	wire [6:0] w4;
	wire wc4;
	ArrayRow_type2	row4(
	a[7:0],
	b[4],
	w3[6:0],
	wc3,
	w4[6:0],
	sum[4],
	wc4
	);
	
	wire [6:0] w5;
	wire wc5;
	ArrayRow_type2	row5(
	a[7:0],
	b[5],
	w4[6:0],
	wc4,
	w5[6:0],
	sum[5],
	wc5
	);
	
	wire [6:0] w6;
	wire wc6;
	ArrayRow_type2	row6(
	a[7:0],
	b[6],
	w5[6:0],
	wc5,
	w6[6:0],
	sum[6],
	wc6
	);

	ArrayRow_type2	row7(
	a[7:0],
	b[7],
	w6[6:0],
	wc6,
	sum[14:8],
	sum[7],
	sum[15]
	);

	
endmodule
