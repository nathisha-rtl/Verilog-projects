module SIPO_tb;
  wire [3:0]Q;
  reg clk,EN,SI,reset;
  
  SIPO uut(.clk(clk),
           .EN(EN),
           .reset(reset),
           .SI(SI),
           .Q(Q));
  always #5 clk=~clk;
  initial begin
    $dumpfile("SIPO.vcd");
    $dumpvars(0,SIPO_tb);
    $monitor("$time=%0t | EN=%b | clk=%b | reset=%b | SI=%b | Q=%b | " , $time , EN , clk , reset, SI , Q );
    
    reset=1;
    clk=0;
    EN=0;
    SI=0;
    #10;
    //start shifting
    EN=1;
    reset=0;
    SI=1;#10;
    SI=0;#10;
    SI=1;#10;
    SI=1;#10;
    
    //disable shifting 
    EN=0;
    SI=0;
    
    //enable shifting again
    EN=1;
    SI=0;
    
    //reset again
    reset=1;
    EN=0;
    $finish;
  end
endmodule
