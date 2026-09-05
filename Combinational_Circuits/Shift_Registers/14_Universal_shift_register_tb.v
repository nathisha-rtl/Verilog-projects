module universal_shift_register_tb;

    wire [3:0] Q;

    reg reset;
    reg EN;
    reg clk;
    reg S1;
    reg S0;
    reg SI_R;
    reg SI_L;
    reg [3:0] PI;

    universal_shift_register uut(
        .reset(reset),
        .EN(EN),
        .clk(clk),
        .S1(S1),
        .S0(S0),
        .SI_R(SI_R),
        .SI_L(SI_L),
        .PI(PI),
        .Q(Q)
    );

    // Clock
    always #5 clk = ~clk;
  initial begin
    $dumpfile("universal_shift_register.vcd");
    $dumpvars(0, universal_shift_register_tb);
    $monitor("$time=%0t | reset=%b | EN=%b | clk=%b | S1=%b | S0=%b | SI_R=%b | SI_L=%b | PI=%b | Q=%b ", $time, reset, EN, clk, S1, S0, SI_R, SI_L, PI, Q);
    
    //initial values
    clk=0;
    reset=1;
    EN=0;
    S1=0;
    S0=0;
    SI_R=0;
    SI_L=0;
    PI=4'b0000;
    #10;
    
    //reset 
    reset=0;
    EN=1;
    #10;
    
    //parallel load 
    S1=1;
    S0=1;
    PI=4'b1011;
    #10;
    
    //shift right
    S1=0;
    S0=1;
    SI_R=0;
    #10;
    
    //shift left 
    S1=1;
    S0=0;
    SI_L=0;
    #10;
    
    //shift left again
    SI_L=1;
    #10;
    
    //disable 
    EN=0;
    #10;
    
    //reset again
    reset=1;
    #10;
    
    $finish;
  end
endmodule
