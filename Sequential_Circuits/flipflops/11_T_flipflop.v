module T_flipflop(
    input T, clk,
    output reg Q, Q_bar
);
  initial begin
    Q=0;
    Q_bar=1;
  end

always @(posedge clk) begin
    
  
    if (T == 0) begin
        Q <= Q;
        Q_bar <= Q_bar;
    end
    else begin
        Q <= ~Q;
        Q_bar <= ~Q_bar;
    end

end

endmodule
