//3_bit asynchronous up/down counter
module asyn_up_down_counter(input clk,
                            input reset,
                            input up_down,
                            output reg[2:0]Q);
  wire clk1 ;
  wire clk2 ;
  assign clk1=up_down? Q[0] : ~Q[0];
  assign clk2=up_down? Q[1] : ~Q[1];
  
  always @(posedge clk or posedge reset) begin
    if(reset==1)
      Q[0]<=1'b0;
    else
      Q[0]<=~Q[0];
  end
  always @(negedge clk1 or posedge reset) begin
    if(reset==1)
      Q[1]<=1'b0;
    else
      Q[1]<=~Q[1];
  end
  always @(negedge clk2 or posedge reset) begin
    if(reset==1)
      Q<=1'b0;
    else
      Q[2]<=~Q[2];
  end
endmodule
