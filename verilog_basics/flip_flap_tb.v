module tb_t_flipflop;
  reg clk, t;
  wire q;

  t_flipflop uut (.clk(clk), .t(t), .q(q));

  initial begin
    $monitor("time=%0d clk=%b t=%b q=%b", $time, clk, t, q);
    clk = 0;
    t = 1;  // always toggle

    #40 t = 0;  // stop toggling
    #20 t = 1;  // resume toggling
    #30 $finish;
  end

  always #5 clk = ~clk;
endmodule
