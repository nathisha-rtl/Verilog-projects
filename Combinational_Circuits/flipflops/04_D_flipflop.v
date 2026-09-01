module D_flipflop(input D,clk,
                  output reg Q,Q_bar);
  
  always @(posedge clk) begin
    Q<=D;
    Q_bar=~D;
  end
endmodule
