module ring_counter_tb;
  wire [3:0]Q;
  reg clk,reset;
  
  ring_counter uut(.clk(clk),
               .reset(reset),
               .Q(Q));
  always #5 clk=~clk;
  initial begin
    $dumpfile("ring_counter.vcd");
    $dumpvars(0,ring_counter_tb);
    $monitor("$time=%0t | clk=%b | reset=%b | Q=%b | ", $time , clk , reset , Q );
    
    clk=0;
    reset=1;
    #10;
    reset=0;
    #50;
    reset=1;
    #10;
    $finish;
  end
endmodule

    
    
  
  
