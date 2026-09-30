module decoder_2_4(input logic [1:0] x, output logic[3:0] y);

   assign y[0]=~x[0]&&~x[1];
   assign y[1]=x[0]&&~x[1];
   assign y[2]=~x[0]&&x[1];
   assign y[3]=x[0]&&x[1];
  
endmodule
  
