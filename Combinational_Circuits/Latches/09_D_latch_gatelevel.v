module D_latch(
    input D,
    input EN,
    output Q,
    output Q_bar
);

wire D_bar;
wire S, R;

not g1(D_bar, D);

and g2(S, D, EN);
and g3(R, D_bar, EN);

nor g4(Q, R, Q_bar);
nor g5(Q_bar, S, Q);

endmodule
