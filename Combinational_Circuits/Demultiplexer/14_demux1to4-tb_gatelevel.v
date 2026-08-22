module demux1to4_tb;
  wire Y0,Y1,Y2,Y3;
  reg D , S1 , S0;
  demux1to4 uut(.D(D),
                .S1(S1),
                .S0(S0),
                .Y0(Y0),
                .Y1(Y1),
                .Y2(Y2),
                .Y3(Y3));
  initial begin
    $dumpfile("demux1to4_tb.vcd");
    $dumpvars(0,demux1to4_tb);
    $monitor("$time=%0t ; D=%b ;S1=%b ;S0=%b ; Y0=%b ; Y1=%b ; Y2=%b ; Y3=%b " , $time ,D , S1, S0 , Y0, Y1, Y2, Y3 );
    
   D=1; S1=0 ; S0=0 ; #10 ;
   D=1; S1=0 ; S0=1 ; #10 ;
   D=1; S1=1 ; S0=0 ; #10 ;
   D=1; S1=1 ; S0=1 ; #10 ;
    
    $finish;
  end
endmodule

