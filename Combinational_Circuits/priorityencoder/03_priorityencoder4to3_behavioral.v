//4to2 priority encoder using behavioral modeling
module priorityencoder(
  input D3,D2,D1,D0,
  output reg Y1,Y0);
  
  always @(*) begin
    if (D3)
    {Y1,Y0}=2'b11;
    else if (D2)
    {Y1,Y0}=2'b10;
    else if (D1)
    {Y1,Y0}=2'b01;
    else
    {Y1,Y0}=2'b00;
  end
endmodule
