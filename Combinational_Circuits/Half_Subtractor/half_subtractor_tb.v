module half_subtractor_tb;

reg A, B;
wire Difference, Borrow;

half_subtractor uut(
    .A(A),
    .B(B),
    .Difference(Difference),
    .Borrow(Borrow)
);

initial begin
    // Create waveform file
    $dumpfile("half_subtractor.vcd");
    $dumpvars(0, half_subtractor_tb);

    // Print values
    $monitor("A=%b B=%b Difference=%b Borrow=%b",
             A, B, Difference, Borrow);

    // Test all combinations
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule
