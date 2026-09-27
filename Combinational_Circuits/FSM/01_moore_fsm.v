//design module of basic fsm
module basic_fsm(input clk , 
                 input reset,
                 input input_signal,
                 output reg Y);
  parameter S0=1'b0;
  parameter S1=1'b1;
  
  reg current_state;
  reg next_state;
  
  //Next-state logic
  always @(*) begin
    if(current_state==S0) begin
      if(input_signal==0)
        next_state=S0;
      else
        next_state=S1;
    end
    
    else begin
      if(input_signal==1)
        next_state=S1;
      else
        next_state=S0;
      
    end
  end
  
  //stae register
  always @(posedge clk) begin
    if(reset==1)
      current_state<=S0;
    else
      current_state<=next_state;
  end
  
  //Output-logic
  always @(*) begin
    if(current_state==S1)
      Y=1'b1;
    else
      Y=1'b0;
  end
endmodule
