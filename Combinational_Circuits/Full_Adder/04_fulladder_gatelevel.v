//full adder using gatelevel modeling
module fulladder(input A,B,Cin , output sum ,carry);
  wire w1,w2,w3,w4;
  xor g1(w1,A,B);
  xor g2(sum,w1,Cin);
  
  and g3(w2,A,B);
  and g4(w3,B,Cin);
  and g5(w4,A,Cin);
  
  or g6(carry,w2,w3,w4);
endmodule
