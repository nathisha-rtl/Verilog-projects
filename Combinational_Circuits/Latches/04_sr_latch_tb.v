module sr_latch_tb;
  wire Q,Q_bar;
  reg S,R;
  
  sr_latch uut(.S(S),
               .R(R),
               .Q(Q),
               .Q_bar(Q_bar));
  initial begin 
    $dumpfile("sr_latch.vcd");
    $dumpvars(0,sr_latch_tb);
    $monitor("$time=%0t | S=%b | R=%b | Q=%b Q_bar=%b ", $time , S , R , Q , Q_bar);
    
    //reset 
    S=0 ; R=1 ; #10;
    
    //hold 
    S=0 ; R=0 ; #10;
    
    //set
    S=1 ; R=0 ; #10;
    
    //hold 
    S=0 ; R=0 ; #10;
    
    //reset 
    S=0 ; R=1 ; #10;
  
    $finish;
  end
endmodule

    
