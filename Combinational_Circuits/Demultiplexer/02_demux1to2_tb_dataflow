module demux1to2_tb;
  wire Y0,Y1;
  reg D,S;
  demux1to2 uut (.D(D),
                 .S(S),
                 .Y0(Y0),
                 .Y1(Y1));
  initial begin 
    $dumpfile("demux1to2_tb.vcd");
    $dumpvars(0,demux1to2_tb);
    $monitor ("$time=%0t ; S=%b ; D=%b ; Y0=%b ; Y1=%b" , $time , S , D , Y0 , Y1 );
    
    S=0 ; D=0 ;#10;
    S=0 ; D=1 ;#10;
    S=1 ; D=0 ;#10;
    S=1 ; D=1 ;#10;
    $finish;
  end
endmodule
