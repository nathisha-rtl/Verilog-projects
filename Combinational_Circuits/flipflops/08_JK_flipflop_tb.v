module JK_flipflop_tb;
  wire Q,Q_bar;
  reg J,K,clk;
  
  JK_flipflop uut(.J(J),
                  .K(K),
                  .clk(clk),
                  .Q(Q),
                  .Q_bar(Q_bar));
  always #5 clk = ~clk;
  initial begin
    $monitor("$time=%0t | J=%b | K=%b | clk=%b | Q=%b | Q_bar=%b", $time , J , K , clk , Q , Q_bar);
    $dumpfile("JK_flipflop.vcd");
    $dumpvars(0,JK_flipflop_tb);
    clk=0;
    
    J=1;K=0;#10;
    J=0;K=1;#10;
    J=1;K=0;#10;
    J=1;K=1;#10;
    J=0;K=0;#10;
    $finish;
  end
endmodule
