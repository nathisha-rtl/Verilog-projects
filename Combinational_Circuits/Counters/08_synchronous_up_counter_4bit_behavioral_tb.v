module synchronous_counter_tb;
  wire [3:0]Q;
  reg clk , reset;
  
  synchronous_counter uut(.clk(clk),
                          .reset(reset),
                          .Q(Q));
  always #5 clk=~clk;
  initial begin
    $dumpfile("synchronous_counter.vcd");
    $dumpvars(0,synchronous_counter_tb);
    $monitor("time=%0t | clk=%b | reset=%b | Q=%b | " , $time , clk , reset , Q );
    
    //initial values
    reset=1;
    clk=0;
    #10;
    
    reset=0;
    #10;
    
    //starts counting
    #80;
    
    //reset again 
    reset=1;#10;
    $finish;
  end
endmodule
