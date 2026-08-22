//demux1to4 using gatelevel modeling
module demux1to4 ( input D ,
                  input S1, S0 ,
                  output Y0,Y1,Y2,Y3);
  wire s1n , s0n;
  
  not g1(s1n,S1);
  not g2(s0n,S0);
  
  and g3(Y0,D,s1n,s0n);
  and g4(Y1,D,s1n,S0);
  and g5(Y2,D,S1,s0n);
  and g6(Y3,D,S1,S0);
endmodule
        
