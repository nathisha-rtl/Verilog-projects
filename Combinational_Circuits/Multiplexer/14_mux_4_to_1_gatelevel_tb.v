//4to 1 mux testbench
module mux_4_to_1_tb;
  reg S1,S0,I0,I1,I2,I3;
  wire Y;
  mux_4_to_1 uut (.S1(S1),
                 .S0(S0),
                 .I0(I0),
                 .I1(I1),
                 .I2(I2),
                 .I3(I3),
                 .Y(Y));
    
  initial begin
    $dumpfile("mux_4_to_1.vcd");
    $dumpvars(0,mux_4_to_1_tb);
    
    $monitor("time=%0t ; S1=%b ; S0=%b ; I0=%b ; I1=%b I2=%b ; I3=%b ; Y=%b",$time,S1,S0,I0,I1,I2,I3,Y);
    
    S1=0 ; S0=0 ; I0=0 ; I1=1 ; I2=0 ; I3=1 ;#10;
    S1=0 ; S0=1 ; I0=1 ; I1=1 ; I2=1 ; I3=0 ;#10;
    S1=1 ; S0=0 ; I0=0 ; I1=1 ; I2=1 ; I3=1 ;#10;
    S1=1 ; S0=1 ; I0=1 ; I1=0 ; I2=0 ; I3=1 ;#10;
    
    $finish;
  end 
endmodule
    
    
    
   
    
    
    
             
 
    
