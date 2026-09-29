module D_latch_tb;
  wire Q;
  reg D,EN;
  
   D_latch uut (.D(D),
                .EN(EN),
                .Q(Q));
    initial begin
      $dumpfile("D_latch.vcd");
      $dumpvars(0,D_latch_tb);
      $monitor("$time=%0t | D=%b | EN=%b | Q=%b ",$time , D , EN , Q);
      
      EN=1 ; D=0 ;
      #10;
      
      EN=1 ; D=1 ;
      #10;
      
      EN=0 ; D=0;
      #10;
      
      $finish;
    end
  endmodule
  
      
      
