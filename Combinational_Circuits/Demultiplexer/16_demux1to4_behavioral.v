//demux1to4 using gatelevel modeling
module demux1to4 (input D ,
                  input S1, S0 ,
                  output reg Y0,Y1,Y2,Y3);
  always @(*) begin
    //First make all output 0
    Y0=0;
    Y1=0;
    Y2=0;
    Y3=0;
    
    if(S1==0 && S0==0)
      Y0=D;
    else if(S1==0 && S0==1)
      Y1=D;
    else if(S1==1 && S0==0)
      Y2=D;
    else
      Y3=D;
      end
      endmodule
      
    
                  
                  
  
