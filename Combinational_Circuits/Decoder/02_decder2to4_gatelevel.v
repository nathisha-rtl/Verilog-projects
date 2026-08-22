module decoder(
  input [1:0]A,
  output [3:0]Y);
  wire A1n , A0n ;
  
  not g1(A1n , A[1]);
  not g2(A0n , A[0]);
   
  and g3(Y[0],A1n,A0n );
  and g4(Y[1],A1n,A[0]);
  and g5(Y[2],A[1],A0n);
  and g6(Y[3],A[1],A[0]);
 
endmodule
