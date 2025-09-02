module tb_full_adder;
  reg a, b, cin;
  wire sum, carry;

  full_adder uut(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));

  initial begin
    $monitor("time=%0d a=%b b=%b cin=%b sum=%b carry=%b", 
              $time, a, b, cin, sum, carry);
    a=0; b=0; cin=0; #10;
    a=0; b=1; cin=0; #10;
    a=1; b=0; cin=0; #10;
    a=1; b=1; cin=0; #10;
    a=1; b=1; cin=1; #10;
  end
endmodule
