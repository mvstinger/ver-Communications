module mux (
	input switch,
	input in1,
	input in2,
	output out
	);

assign out = (switch) ? in1 : in2;

endmodule