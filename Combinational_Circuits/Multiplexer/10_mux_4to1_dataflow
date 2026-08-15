module mux_4_to_1(input S1,S0,
                 input I0,I1,I2,I3,
                 output Y);
     
  assign Y=(~S1 & ~S0 & I0) | (~S1 & S0 &I1) | (S1 & ~S0 & I2) | ( S1 & S0 & I3);
  endmodule
