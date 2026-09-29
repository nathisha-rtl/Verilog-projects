module SR_flipflop(input S,R,clk ,
                   output reg Q,
                   output reg Q_bar);
  always @(posedge clk) begin
    if(S==1 && R==0) begin
      Q<=1;
      Q_bar<=0;
    end
    
    else if(S==0 && R==1) begin
      Q<=0;
      Q_bar<=1;
    end
     
    else if(S==0 && R==0) begin
      Q<=Q;
      Q_bar<=Q_bar;
    end
    
    else begin
      Q<=1'bx;
      Q_bar<=1'bx;
    end
  end
endmodule
