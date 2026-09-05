module PIPO_tb;

  wire [3:0] Q;
  reg clk;
  reg reset;
  reg EN;
  reg [3:0] PI;

  PIPO uut(
      .clk(clk),
      .reset(reset),
      .EN(EN),
      .PI(PI),
      .Q(Q)
  );

  always #5 clk = ~clk;

  initial begin

    $dumpfile("PIPO.vcd");
    $dumpvars(0, PIPO_tb);

    $monitor("$time=%0t | clk=%b | reset=%b | EN=%b | PI=%b | Q=%b", $time, clk, reset, EN, PI, Q);
    
    //initial values 
    reset=1;
    EN=0;
    clk=0;
    PI=4'b0000;
    #10;
    
    //load 1st input
    reset=0;
    EN=1;
    PI=4'b1011;
    #10;
    
    //load 2nd input 
    PI=4'b1111;#10;
    
    //disable loading
    EN=0;
    PI=4'b1100;
    #10;
    //enable loading again
    EN=1;
    PI=4'b0110;
    #10;
    
    //reset again
    EN=0;
    reset=1;
    #10;
    $finish;
  end
endmodule

    
