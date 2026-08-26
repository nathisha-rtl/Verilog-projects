module D_latch_tb;
  wire Q,Q_bar;
  reg D,EN;
  
   D_latch uut (.D(D),
                .EN(EN),
                .Q(Q),
                .Q_bar(Q_bar));
    initial begin
      $dumpfile("D_latch.vcd");
      $dumpvars(0,D_latch_tb);
      $monitor("$time=%0t | D=%b | EN=%b | Q=%b | Q_bar=%b",$time , D , EN , Q , Q_bar);
      
      EN=1 ; D=0 ;
      #10;
      
      EN=1 ; D=1 ;
      #10;
      
      EN=0 ; D=0;
      #10;
      
      $finish;
    end
  endmodule
  
