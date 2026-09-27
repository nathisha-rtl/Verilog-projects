//testbench for basic fsm
module basic_fsm_tb;
  reg clk;
  reg reset;
  reg input_signal;
  wire Y;
  
  basic_fsm uut(.clk(clk),
                .reset(reset),
                .input_signal(input_signal),
                .Y(Y));
  always #5 clk=~clk;
  initial begin
    $monitor("$time=%0t | clk=%b | reset=%b | input_signal=%b | Y=%b | " , $time , clk , reset , input_signal , Y ) ;
    $dumpfile("basic_fsm.vcd");
    $dumpvars(0,basic_fsm_tb);
    
    //initial values
    clk=0;
    reset=1;
    input_signal=0;
    #10;
    
    reset=0;
    
    input_signal=0;#10;
    input_signal=1;#10;
    input_signal=0;#10;
    input_signal=1;#10;
    
    $finish;
  end
endmodule

    
    
             
  
  
  
