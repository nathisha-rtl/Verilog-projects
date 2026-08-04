module full_adder_tb;

reg A, B, Cin;
wire Sum, Carry;

full_adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin

    // Create waveform file
    $dumpfile("full_adder.vcd");
    $dumpvars(0, full_adder_tb);

    // Print values in terminal
    $monitor("A=%b B=%b Cin=%b Sum=%b Carry=%b",
             A, B, Cin, Sum, Carry);

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
