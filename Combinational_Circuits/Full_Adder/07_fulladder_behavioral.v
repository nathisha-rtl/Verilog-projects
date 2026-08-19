module full_adder(
    input A,
    input B,
    input Cin,
    output reg Sum,
    output reg Carry
);

always @(*) begin
    Sum = A ^ B ^ Cin;
    Carry = (A & B) | (A & Cin) | (B & Cin);
end

endmodule
