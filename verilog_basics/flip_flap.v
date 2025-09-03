module t_flipflop (
    input clk, t,
    output reg q
);
  always @(posedge clk) begin
    if (t)
      q <= ~q; // toggle if T=1
    else
      q <= q;  // hold if T=0
  end
endmodule

