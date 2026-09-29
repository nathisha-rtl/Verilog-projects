module PISO_tb;
  wire SO;
  reg clk;
  reg LOAD;
  reg reset;
  reg EN;
  reg [3:0]PI;
  
  PISO uut(.clk(clk),
           .reset(reset),
           .EN(EN),
           .PI(PI),
           .LOAD(LOAD),
           .SO(SO));
  always #5 clk=~clk;
  initial begin
    $dumpfile("PISO.vcd");
    $dumpvars(0,PISO_tb);
    $monitor("$time=%0t | clk=%b | reset=%b | EN=%b | LOAD=%b | PI=%b | SO=%b " , $time , clk , reset , EN , LOAD , PI , SO );
    //initial values 
    reset=1;
    clk=0;
    EN=0;
    LOAD=0;
    PI=4'b0000;
    #10;
    
    //load input values
    reset=0;
    LOAD=1;
    PI=4'b1011;
    #10;
    
    //start shifting 
    LOAD=0;
    EN=1;
    #10;
    #10;
    #10;
    #10;
    
    //disable shiftimg
    EN=0;
    #10;
    
    //reset again
    reset=1;
    EN=0;
    #10;
    
    $finish;
  end
endmodule
