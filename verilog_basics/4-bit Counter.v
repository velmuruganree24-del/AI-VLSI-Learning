module updown_counter (
    input clk, reset, up,
    output reg [3:0] q
);
  always @(posedge clk or posedge reset) begin
    if (reset)
      q <= 4'b0000;
    else if (up)
      q <= q + 1;
    else
      q <= q - 1;
  end
endmodule
