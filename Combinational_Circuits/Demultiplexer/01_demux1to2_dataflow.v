//1 to 2 demux using datflow modeling
module demux1to2 (input D , S , Y0 , Y1 );
  assign Y0= ~S & D;
  assign Y1= S & D;
endmodule
