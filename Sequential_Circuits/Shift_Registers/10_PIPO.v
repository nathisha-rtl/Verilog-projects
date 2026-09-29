module PIPO(input clk,
            input reset,
            input EN,
            input [3:0]PI,
            output reg [3:0]Q);
  always @(posedge clk) begin
    if(reset==1) begin
      Q<=4'b0000;
    end
    
    else if(EN==1) begin
      Q<=PI;
    end
  end
endmodule
