module demux1to2( input S,D,Y0,Y1);
  wire w1;
  
  not g1(w1,S);
  and g2(Y0,w1,D);
  and g3(Y1,S,D);
endmodule
