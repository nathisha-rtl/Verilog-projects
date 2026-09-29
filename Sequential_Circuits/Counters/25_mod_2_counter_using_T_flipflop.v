//MOD-2 counter using T flipflop
module mod_2_counter(input clk ,
                     input reset ,
                     output reg Q);
  always @(posedge clk or posedge reset) begin
    if(reset==1)
      Q<=1'b0;
    else 
      Q<= ~Q;
  end
endmodule
