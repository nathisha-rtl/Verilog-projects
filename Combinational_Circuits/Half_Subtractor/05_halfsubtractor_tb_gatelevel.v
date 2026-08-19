module halfsubtractor_tb;

reg A, B;
wire difference,borrow;

halfsubtractor uut (
    .A(A),
    .B(B),
    .difference(difference),
  .borrow(borrow));

initial begin

    $dumpfile("halfsubtractor.vcd");
    $dumpvars(0, halfsubtractor_tb);

  $monitor("time=%0t A=%b B=%b difference=%b borrow=%b",
              $time, A, B, difference, borrow);

    A=0; B=0;
    #10 A=0; B=1;
    #10 A=1; B=0;
    #10 A=1; B=1;

    #10 $finish;

end

endmodule
