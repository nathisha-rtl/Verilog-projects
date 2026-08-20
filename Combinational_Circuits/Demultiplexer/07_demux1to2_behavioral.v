//demux1to2 usig behavioral modeling
module demux1to2 ( input S , D ,
                  output reg Y0,
                  output reg Y1);
  always @(*)begin
    if(S==0) begin
      Y0=D;
      Y1=0;
    end
    else begin
      Y0=0;
      Y1=D;
    end
  end
endmodule

    
  

