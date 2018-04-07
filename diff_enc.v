module diff_enc(
  clock,
  enable,
  reset,
  in,
  out);

//	Specify in or out
input clock;
input enable;
input reset;
input in;
output out;

//	Classify ports
wire clock;
wire enable;
wire reset;
wire in;
reg out;

wire xor_output;	//	Output of continuous xor
reg last_value;		//	Stores last value
reg output_selector;	// 0=xor, 1=last_value

initial begin
  output_selector = 0;
  last_value = 0;
end


//	Keep running xor
xor(xor_output, in, last_value);


//	Set up enable wire
always @ (negedge enable or posedge enable) begin
  output_selector = (enable==1) ? 1'b0 : 1'b1;
end

//	If reset goes high, reset to initial conditions
always @ (posedge reset) begin
  last_value = 1'b0;
end


//	Set output from selector at each clock transition
//		and update last value
always @ (posedge clock or negedge clock) begin
//	Switch output based on selector
  out = (output_selector==1'b1) ? last_value : xor_output;
  last_value <= out;
end

endmodule