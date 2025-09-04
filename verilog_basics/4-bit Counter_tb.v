module tb_updown_counter;
  reg clk, reset, up;
  wire [3:0] q;

  updown_counter uut (.clk(clk), .reset(reset), .up(up), .q(q));

  initial begin
    $monitor("time=%0d clk=%b reset=%b up=%b q=%b", $time, clk, reset, up, q);
    clk = 0; reset = 1; up = 1;

    #5 reset = 0; // start counting up
    #40 up = 0;   // switch to down count
    #40 reset = 1; // reset
    #10 $finish;
  end

  always #5 clk = ~clk;
endmodule
