module universal_shift_register( input reset , 
                                input EN,
                                input clk,
                                input S1 ,
                                input S0,
                                input SI_R,
                                input SI_L,
                                input [3:0]PI,
                                output reg [3:0]Q);
  always @(posedge clk) begin
    if(reset==1) begin
      Q<=4'b0000;
    end
    else if (EN==1) begin
      case ({S1,S0})
        2'b00:begin
          Q<=Q; //Hold
        end
        
        2'b01:begin
          Q<={SI_R , Q[3:1]};
        end
         
        2'b10:begin
          Q<={Q[2:0] , SI_L};
        end
        
        2'b11:begin
          Q<=PI;
        end
      endcase
    end
  end
  
  endmodule
        
