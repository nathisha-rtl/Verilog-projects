//4 bit synchronous counter using behavioral modeling
module synchronous_counter(input clk ,
                           input reset,
                           output reg[3:0]Q);
  always @(posedge clk ) begin
    if(reset==1)
      Q<=4'b000;
    else
      Q<=Q+1;
  end
endmodule
