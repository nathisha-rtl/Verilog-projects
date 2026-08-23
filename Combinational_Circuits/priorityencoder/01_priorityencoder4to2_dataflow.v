//4to2 priority encoder using dataflow modeling
module priorityencoder(
  input D3,D2,D1,D0,
  output Y1,Y0);
  
  assign Y1=D2 | D3;
  assign Y0=D3 | (~D2 & D1);
  
endmodule
