module SIPO(input EN,clk,reset,SI,
            output reg [3:0]Q );
  always @(posedge clk)begin
    if(reset==1) begin 
      Q<=4'b000;
    end
    else if(EN==1) begin
      Q[0]<=SI;
      Q[1]<=Q[0];
      Q[2]<=Q[1];
      Q[3]<=Q[2];
    end
  end
endmodule
