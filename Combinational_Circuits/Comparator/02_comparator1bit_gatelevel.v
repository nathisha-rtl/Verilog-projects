// 1-bit Comparator using Gate-Level Modeling

module comparator(
    input A,
    input B,
    output A_greater_B,
    output A_equal_B,
    output A_less_B
);

wire nA, nB;
wire w1, w2;

not g1(nA, A);
not g2(nB, B);

and g3(A_greater_B, A, nB);

and g4(A_less_B, nA, B);

and g5(w1, nA, nB);
and g6(w2, A, B);

or g7(A_equal_B, w1, w2);

endmodule
