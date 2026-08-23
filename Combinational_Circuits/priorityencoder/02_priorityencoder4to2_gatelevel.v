//4to2 priority encoder using gatelevel modeling
module priorityencoder(
  input D3,D2,D1,D0,
  output Y1,Y0);
  wire D2n,w2;
  
  not g1(D2n,D2);
  or g2(Y1,D3,D2);
  or g3(Y0,w2,D3);
  
  and g4(w2,D2n, D1);
endmodule
