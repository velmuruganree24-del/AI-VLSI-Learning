module counter_2bit (
    input clk, reset,
    output reg [1:0] q
);
  always @(posedge clk or posedge reset) begin
    if (reset)
      q <= 2'b00;
    else
      q <= q + 1;
  end
endmodule
