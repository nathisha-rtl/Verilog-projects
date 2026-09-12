//Testbench for 3bit asynchronous up/down counter
module asyn_up_down_counter_tb;
  reg clk;
  reg reset;
  reg up_down;
  wire [2:0]Q;

  asyn_up_down_counter uut(.clk(clk),
                           .reset(reset),
                           .up_down(up_down),
                           .Q(Q));
  always #5 clk=~clk;
  initial begin
    $dumpfile("asyn_up_down_counter.vcd");
    $dumpvars(0,asyn_up_down_counter_tb);
    $monitor("$time=%0t | clk=%b | reset=%b | up_down=%b | Q=%b |" , $time , clk , reset , up_down , Q);
    
    //initial values
    clk=0;
    reset=1;
    up_down=1;
    #10;
    
    reset=0;
    #10;
    
    up_down=1;
    #80;
    
    up_down=0;
    #80;
    
    $finish;
  end
endmodule
