module comparator_tb;
  wire A_greater_B, A_equal_B, A_less_B;
  reg A,B;
  comparator uut (.A(A),
                  .B(B),
                  .A_greater_B(A_greater_B),
                  .A_equal_B( A_equal_B),
                  .A_less_B(A_less_B));
  initial begin 
    $dumpfile("comparator.vcd");
    $dumpvars(0,comparator_tb);
    $monitor("$time=%0t | A=%b | B=%b | A_greater_B=%b | A_equal_B=%b | A_less_B=%b ",$time , A , B ,  A_greater_B , A_equal_B , A_less_B);
             
             A=0;B=0;#5;
             A=0;B=1;#10;
             A=1;B=0;#15;
             A=1;B=1;#20;
             $finish;
             end
             endmodule
