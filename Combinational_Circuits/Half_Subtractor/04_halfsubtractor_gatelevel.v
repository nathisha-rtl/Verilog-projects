//halfadder using gatelevel
module halfsubtractor (input A , B , output borrow , difference);
  
  wire w1;
  
  not g1(w1,A);
  xor g2(difference,A,B);
  and g3(borrow,w1,B);
endmodule
