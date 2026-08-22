//4:2 encoder using behavioral model
module encoder4to2(
  input [3:0]I ,
  output reg [1:0]Y);
  always @(*) begin
  
  if(I==4'b0001)
    Y=2'b00;
  else if(I==4'b0010)
    Y=2'b01;
  else if(I==4'b0100)
    Y=2'b10;
  else if(I==4'b1000)
    Y=2'b11;
    
  end
  
endmodule

  
  
