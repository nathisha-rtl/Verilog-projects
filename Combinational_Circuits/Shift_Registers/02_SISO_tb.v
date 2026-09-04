module SISO_tb;
  wire SO;
  reg clk,reset,EN,SI;
  
  SISO uut (.clk(clk),
            .EN(EN),
            .reset(reset),
            .SI(SI),
            .SO(SO));
  always #5 clk=~clk;
  initial begin
    $dumpfile("SISO.vcd");
    $dumpvars(0,SISO_tb);
    $monitor("$time=%0t | EN=%b | clk=%b | reset=%b | SI=%b | SO=%b " , $time , EN , clk , reset , SI , SO );
    //initial values 
    reset=1;
    EN=0;
    clk=0;
    SI=0; 
    #10;
    //start shifting
    EN=1;
    reset=0;
    SI=1;#10;
    SI=0;#10;
    SI=1;#10;
    SI=1;#10;
    
    //disable shifing
    EN=0;
    SI=0;
    
    //enable shifting
    EN=1;
    SI=0;
    
    //reset again
    reset=1;
    EN=0;
    $finish;
  end
endmodule

    
    
  
  
