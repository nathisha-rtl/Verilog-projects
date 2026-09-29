module T_flipflop_tb;

  wire Q, Q_bar;
  reg T, clk;

  T_flipflop uut(
      .T(T),
      .clk(clk),
      .Q(Q),
      .Q_bar(Q_bar)
  );

  // Clock generation
  always #5 clk = ~clk;

  initial begin

    $monitor("$time=%0t | T=%b | clk=%b | Q=%b | Q_bar=%b",
             $time, T, clk, Q, Q_bar);

    $dumpfile("T_flipflop.vcd");
    $dumpvars(0, T_flipflop_tb);

    clk = 0;

    // Hold
    T = 0;
    #10;

    // Toggle
    T = 1;
    #10;

    // Toggle
    T = 1;
    #10;

    // Toggle
    T = 1;
    #10;

    // Hold
    T = 0;
    #10;

    $finish;

  end

endmodule
