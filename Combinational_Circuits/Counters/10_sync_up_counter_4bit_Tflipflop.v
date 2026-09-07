//synchronous up counter using T flipflop
module sync_up_counter(input clk ,
                           input reset ,
                           output reg [3:0]Q);
  always @(posedge clk) begin
    if(reset==1)
      Q<=4'b0000;
    else begin
      Q[0]<=~Q[0];
      if(Q[0]==1)
        Q[1]<=~Q[1];
      if(Q[1]==1 && Q[0]==1)
        Q[2]<=~Q[2];
      if(Q[2]==1 && Q[1]==1 && Q[0]==1)
        Q[3]<=~Q[3];
    end
  end
endmodule
