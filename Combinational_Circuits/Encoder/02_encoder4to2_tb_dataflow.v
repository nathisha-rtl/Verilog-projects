module encoder4to2_tb;
  wire [1:0]Y;
  reg [3:0]I;
  
  encoder4to2 uut(.I(I),
                  .Y(Y));
  initial begin 
    $dumpfile("encoder4to2_tb.vcd");
    $dumpvars(0,encoder4to2_tb);
    $monitor("$time=%0t | I=%b | Y=%b " , $time , I , Y );
    
    //test I0
    I=4'b0001;#5;
    
    //test I1
    I=4'b0010;#10;
    
    //test I2
    I=4'b0100;#15;
    
    //test I3
    I=4'b1000;#20
    
    $finish;
  end
endmodule

    
              
