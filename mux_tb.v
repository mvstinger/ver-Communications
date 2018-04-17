module mux_tb;

	reg in1 = 1;
	reg in2 = 0;
	reg swth = 0;
	wire out;
	
	mux UUT(swth, in1, in2, out);
	
	initial begin

		$dumpfile("test.vcd");
		$dumpvars(0,mux_tb);	
   
		//	Setup test bench inputs
		#5	swth = 1;
		#5	swth = 0;
		#5	swth = 1;
		#5	swth = 0;
		#5	swth = 1;
		#5	swth = 0;
		#5	swth = 1;
		#5	swth = 0;

		#60 $finish;
		
	end

endmodule