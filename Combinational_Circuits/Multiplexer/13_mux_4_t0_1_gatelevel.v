// 4 to 1 mux
module mux_4_to_1(input S1,S0,
                 input I0,I1,I2,I3,
                 output Y);
 wire S1n,S0n;
 wire y0,y1,y2,y3;
  
  not g1(S1n,S1);
  not g2(S0n,S0);
  and g3(y0,S1n,S0n,I0);
  and g4(y1,S1n,S0,I1);
  and g5(y2,S1,S0n,I2);
  and g6(y3,S1,S0,I3);
  or g7(Y,y0,y1,y2,y3);
endmodule
