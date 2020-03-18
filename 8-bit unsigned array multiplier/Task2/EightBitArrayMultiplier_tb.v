`timescale 10 ns / 100 ps

module EightBitArrayMultiplier_tb;

	reg [7:0] a;
	reg [7:0] b;
	
	wire [15:0] sum;
	
	EightBitArrayMultiplier dut(
		a,
		b,
		sum
	);
	
	integer i;
	
	initial
	begin
	
			for(i = 0; i < 100; i = i + 1)
			begin
			
					 a = $random()%255;
					 b = $random()%255;
					 
					 #10;
					 
			end
			
			
	end
	
endmodule
