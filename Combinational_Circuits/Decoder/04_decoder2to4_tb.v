module decoder_tb;
  wire [3:0]Y;
  reg [1:0]A;
  
  decoder uut(.A(A),
              .Y(Y));
  
  initial begin
    $dumpfile("decoder_tb.vcd");
    $dumpvars(0,decoder_tb);
    $monitor ("$time=%0t | A=%b | Y=%b " , $time , A , Y );
      A=2'b00 ; #5 ;
      A=2'b01 ; #5 ;
      A=2'b10 ; #5 ;
      A=2'b11 ; #5 ;
    $finish;
  end
endmodule
      
  
     
    
