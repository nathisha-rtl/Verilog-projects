module mux_2_to_1 ( input I0,I1,S0, output Y );
  wire w1,w2,w3;
  //gate level modeling
 
  not g1(w1,S0);
  and g2(w2,I0,w1);
  and g3(w3,S0,I1);
  or g4(Y,w2,w3);
endmodule
