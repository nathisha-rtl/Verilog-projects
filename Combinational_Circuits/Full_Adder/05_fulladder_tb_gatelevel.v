module fulladder_tb;

reg A, B, Cin;
wire sum, carry;

fulladder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .sum(sum),
    .carry(carry)
);

initial begin

    // Create waveform file
    $dumpfile("fulladder.vcd");
    $dumpvars(0, fulladder_tb);

    // Print values in terminal
    $monitor("A=%b B=%b Cin=%b Sum=%b Carry=%b",
             A, B, Cin, sum, carry);

    A = 0; B = 0; Cin = 0; #10;
    A = 0; B = 0; Cin = 1; #10;
    A = 0; B = 1; Cin = 0; #10;
    A = 0; B = 1; Cin = 1; #10;
    A = 1; B = 0; Cin = 0; #10;
    A = 1; B = 0; Cin = 1; #10;
    A = 1; B = 1; Cin = 0; #10;
    A = 1; B = 1; Cin = 1; #10;

    $finish;
end

endmodule
