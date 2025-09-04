module tb_counter_2bit;
  reg clk, reset;
  wire [1:0] q;

  counter_2bit uut (.clk(clk), .reset(reset), .q(q));

  initial begin
    $monitor("time=%0d clk=%b reset=%b q=%b", $time, clk, reset, q);
    clk = 0; reset = 1;

    #5 reset = 0;   // release reset
    #50 reset = 1;  // reset again
    #10 $finish;
  end

  always #5 clk = ~clk; // 10 time-unit clock
endmodule
