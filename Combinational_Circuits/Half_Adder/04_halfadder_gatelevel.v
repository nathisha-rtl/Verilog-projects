//half adder using gatelevel modeling
module halfadder( input A , B , output sum , carry );
  xor g1 (sum,A,B);
  and g2 (carry,A,B);
endmodule;

