module asynchronous_counter_tb;
  wire [2:0]Q;
  reg clk , reset;
  
  asynchronous_counter uut(.clk(clk),
                           .reset(reset),
                           .Q(Q));
  always #5 clk=~clk;
  initial begin
    $dumpfile("asynchronous_counter.vcd");
    $dumpvars(0,asynchronous_counter_tb);
    $monitor("$time=%0t | clk=%b | reset=%b | Q=%b |" , $time , clk , reset , Q );
    //set initial values 
    clk=0;
    reset=1;
    #10;
    
    reset=0;
    //let counter run 
    #80;
    //reset again
    reset=1;
    #10;
    $finish;
  end
endmodule
