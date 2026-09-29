module D_latch(
    input D,
    input EN,
    output reg Q
);
  always @(*) begin 
    if(EN==1)
      Q=D;
  end
endmodule
