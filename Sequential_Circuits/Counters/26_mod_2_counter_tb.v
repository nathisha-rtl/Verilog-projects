//MOD-2 counter using T flipflop testbench
module mod_2_counter_tb;
  reg clk;
  reg reset;
  wire Q;
  mod_2_counter uut(.clk(clk),
                    .reset(reset),
                    .Q(Q));
  always #5clk=~clk;
  initial begin
  $dumpfile("mod_2_counter.vcd");
  $dumpvars(0,mod_2_counter_tb);
  $monitor("$time=%0t | clk=%b | reset=%b | Q=%b | " , $time , clk , reset , Q);
  //initial values
  clk=0;
  reset=1;
  #10;
  
  reset=0;
  #80;
  $finish;
  end
endmodule
