module tb;
  logic[3:0] x;
  logic[1:0] y;
	
  encoder_4_2 dut(.x(x),.y(y));
  
  
  initial begin
    
    
  $dumpfile("dump.vcd");
  $dumpvars;
  
    x=4'b0001;
    #1
    if(y==2'b00)
      $display("PASS x=%b y=%b",x,y);
    else
      $display("FAIL x=%b y=%b",x,y);
    x=4'b0010;
     #1
    if(y==2'b01)
      $display("PASS x=%b y=%b",x,y);
    else
      $display("FAIL x=%b y=%b",x,y);
    x=4'b0100;
     #1
    if(y==2'b10)
      $display("PASS x=%b y=%b",x,y);
    else
      $display("FAIL x=%b y=%b",x,y);
    x=4'b1000;
     #1
    if(y==2'b11)
      $display("PASS x=%b y=%b",x,y);
    else
      $display("FAIL x=%b y=%b",x,y);
    $finish;
  end
  
  
endmodule
