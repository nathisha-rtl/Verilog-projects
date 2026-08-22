module encoder4to2(
  input [3:0]I ,
  output [1:0]Y);
  
  or g1( Y[1],I[2],I[3]);
  or g2( Y[0],I[1],I[3]);
  
endmodule
