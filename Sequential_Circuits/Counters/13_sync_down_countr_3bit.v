//3 bit synchronous down counter
module sync_counter(input clk,reset,
                    output reg[2:0]Q);
  always @(posedge clk or posedge reset) begin
    if(reset==1)
      Q<=3'b000;
    else begin
      Q[0]<= ~Q[0];
      Q[1]<= Q[1] ^ ~Q[0];
      Q[2]<= Q[2] ^ (~Q[1] & ~Q[0]);
    end
  end
endmodule
