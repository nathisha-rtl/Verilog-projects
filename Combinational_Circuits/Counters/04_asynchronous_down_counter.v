module asynchronous_down_counter(input clk,
                                 input reset,
                                 output reg[2:0]Q);
  wire [2:0]Q_bar;
   assign Q_bar=~Q;
  
  always @(negedge clk or posedge reset) begin
    if(reset==1)
      Q[0]<=0;
    else
      Q[0]<=~Q[0];
  end
  always @(negedge Q_bar[0] or posedge reset) begin
    if(reset==1)
      Q[1]<=0;
    else
      Q[1]<=~Q[1];
  end
  
  always @(negedge Q_bar[1] or posedge reset) begin 
    if(reset==1)
      Q[2]<=0;
    else
      Q[2]<=~Q[2];
  end
endmodule
   
               
