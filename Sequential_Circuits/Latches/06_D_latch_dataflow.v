// D latch using dataflow modeling
module D_latch( input D, EN ,
               output Q);
  
  //if EN=1 ==> Q=D 
  //if EN=0 ==> Q=previous Q
  
  assign Q= EN? D : Q;
endmodule
