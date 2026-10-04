module mealy_101_detector(input clk,
                              input reset, 
                              input input_signal,
                              output reg Y);
  parameter S0=2'b00;
  parameter S1=2'b01;
  parameter S2=2'b10;
  
  reg [1:0] current_state;
  reg [1:0] next_state;
  //State register
  always @(posedge clk) begin
    if(reset)
      current_state=S0;
    else
      current_state=next_state;
  end
  
  //next state logic
  always @(*) begin
    case(current_state)
      S0:begin
        if(input_signal==1'b1)
          next_state=S1;
        else
          next_state=S0;
      end
      
      S1:begin
        if(input_signal==1'b0)
          next_state=S2;
        else
          next_state=S1;
      end
      
      S2:begin
        if(input_signal==1'b1)
          next_state=S1;
        else
          next_state=S0;
      end
      
      default:
        next_state=S0;
    endcase
  end
  
  //output logic
  always @(*) begin
    if((current_state==S2)&&(input_signal==1'b1))
      Y=1'b1;
    else
      Y=1'b0;
  end
endmodule
