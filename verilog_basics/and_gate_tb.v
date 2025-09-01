`timescale 1ns/1ps
module and_gate_tb;

    reg A, B;        // inputs we control
    wire Y;          // output from the AND gate

    // Instantiate the design (Unit Under Test)
    and_gate uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        // Monitor values
        $monitor("Time=%0t | A=%b B=%b | Y=%b", $time, A, B, Y);

        // Apply test cases
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;  // end simulation
    end
endmodule
