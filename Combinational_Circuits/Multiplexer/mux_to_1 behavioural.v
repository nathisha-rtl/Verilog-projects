module mux_2_to_1( input I0,I1,S0 ,output reg Y );
  //behavioural modeling
  always @(*) begin 
    if (S0==0)
      Y=I0;
    else 
      Y=I1;
  end
    endmodule
  
