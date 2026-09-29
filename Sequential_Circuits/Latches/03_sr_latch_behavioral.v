//SR latch using behavioral modeling
module sr_latch(input S , R ,
                output reg Q , Q_bar);
  always @(*) begin
    if(S==0 && R==1)begin
      Q=0;
      Q_bar=1;
    end
    
    else if(S==1 && R==0) begin
      Q=1;
      Q_bar=0;
    end
    //S==0 //R==0 ==> HOLD 
    // no assignment needed
  end
endmodule
