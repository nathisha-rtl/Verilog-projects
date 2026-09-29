module D_flipflop_tb;
  wire Q,Q_bar;
  reg D,clk;
  
  D_flipflop uut(.D(D),
                 .clk(clk),
                 .Q(Q),
                 .Q_bar(Q_bar));
  
  always #5 clk=~clk;
  initial begin
    $monitor("$time=%0t | D=%b | clk=%b | Q=%b | Q_bar=%b " , $time , D , clk , Q , Q_bar);
    $dumpfile("D_flipflop.vcd");
    $dumpvars(0,D_flipflop_tb);
    
    clk=1;
    
    D=1;#5;
    D=0;#10;
    D=1;#10;
    D=1;#10;
    D=0;#10;
    $finish;
  end
endmodule
