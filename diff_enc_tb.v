module diff_enc_tb;

reg clock=0;
reg reset=0;
reg enable=0;
reg in_bs=0;
wire out_bs;


initial begin

  $dumpfile("test.vcd");
  $dumpvars(0,diff_enc_tb);
 
  //	Setup test bench inputs
  # 5 enable = 0;
      reset = 0;
	  in_bs = 0;
  
  # 5 enable = 1;
  # 5 reset = 1;
  #	2 reset = 0;

  # 5 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  reset = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  reset = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  enable = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  enable = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;
  # 1 in_bs = 1;
  # 1 in_bs = 1;
  # 1 in_bs = 0;

  # 10 $finish;
end

//	Make clock
always #1 clock = !clock;

diff_enc E1(
  .clock(clock),
  .enable(enable),
  .reset(reset),
  .in(in_bs),
  .out(out_bs)
);
  
 
 endmodule