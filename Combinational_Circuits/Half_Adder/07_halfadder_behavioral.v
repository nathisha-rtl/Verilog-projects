//half adder using behavioral modeling

module halfadder(input A,B , 
                 output reg sum,
                 output reg carry);
  
  always@(*)begin
    sum=A^B;
    carry=A&B;
  end
endmodule
