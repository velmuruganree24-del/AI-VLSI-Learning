module tb_half_adder;
  reg a, b;              // Inputs are regs in TB
  wire sum, carry;        // Outputs are wires

  // Instantiate the Half Adder
  half_adder uut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    $monitor("time=%0d a=%b b=%b sum=%b carry=%b", $time, a, b, sum, carry);

    // Apply test cases
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
  end
endmodule
