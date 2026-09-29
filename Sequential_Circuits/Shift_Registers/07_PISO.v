module PISO(input clk,
            input reset,
            input EN,
            input [3:0]PI,
            input LOAD,
            output SO);
  
  reg[3:0]Q;
  always @(posedge clk ) begin
    if(reset==1) begin
      Q<=4'b0000;
    end
    else if(LOAD==1) begin
      Q<=PI;
    end
    else if(EN==1) begin
      Q[3]<=0;
      Q[2]<=Q[3];
      Q[1]<=Q[2];
      Q[0]<=Q[1];
    end
  end
  assign SO=Q[0];
endmodule
