module halfadder_tb;
  reg A,B ;
  wire sum,carry;
  
  halfadder uut(.A(A),
             .B(B),
             .sum(sum),
             .carry(carry));
    initial begin 
      $dumpfile("halfadder_tb.vcd");
      $dumpvars(0,halfadder_tb);
      
      $monitor("$time=%0t ; A=%b ; B=%b ; sum=%b ; carry=%b ", $time , A , B , sum , carry );
               A=0;B=0;#10;
               A=0;B=1;#10;
               A=1;B=0;#10;
               A=1;B=1;#10;
               $finish;
               end
               endmodule
               
