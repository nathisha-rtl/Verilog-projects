//SR latch using gatelevel modeling
module sr_latch(input S , R ,
                output Q , Q_bar);
  assign Q= ~( R | Q_bar );
  assign Q_bar= ~(S | Q );
endmodule
