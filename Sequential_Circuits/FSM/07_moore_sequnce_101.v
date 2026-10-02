module moore_fsm_sequence_101(input clk ,
                              input reset,
                              input input_signal,
                              output reg Y);
  //state declaration
  parameter S0=2'b00;
  parameter S1=2'b01;
  parameter S2=2'b10;
  parameter S3=2'b11;
  
  reg[1:0] current_state;
  reg[1:0] next_state;
  
  //next_state logic
  always @(*) begin
    case(current_state)
      //nothing matched
      S0:begin
      if(input_signal==1)
        next_state=S1;
      else
        next_state=S0;
      end
      
      //received 1
      
      S1:begin
        if(input_signal==0)
          next_state=S2;
        else
          next_state=S1;
      end
      
      //received 10
      
      S2:begin
        if(input_signal==1)
          next_state=S3;
        else
          next_state=S0;
      end
      
      //received 101
      
      S3:begin
        if(input_signal==1)
          next_state=S1;
        else
          next_state=S2;
      end
      
      //safety state
      default:
        next_state=S0;
      
    endcase
  end
  
  //state regiser
  always @(posedge clk) begin
    if(reset)
      current_state<=S0;
    else 
      current_state<=next_state;
  end
  
  //output logic
  always @(*) begin
    case(current_state)
      S0: Y=1'b0;
      S1: Y=1'b0;
      S2: Y=1'b0;
      S3: Y=1'b1;
      default:
        Y=1'b0;
    endcase
  end
endmodule

      
      
        
        
