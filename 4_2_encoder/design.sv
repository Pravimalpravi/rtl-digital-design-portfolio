module encoder_4_2 (input logic[3:0]x, output logic[1:0] y);
  
  assign y[0]=x[1]|x[3];
  assign y[1]=x[2]|x[3];
  
endmodule
