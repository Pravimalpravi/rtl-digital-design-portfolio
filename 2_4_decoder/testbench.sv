module tb;
  
  logic[1:0] x;
  logic[3:0] y;
  
  decoder_2_4 dut(.x(x),.y(y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    
    x=2'b00;
    #1;
    if(y==4'b0001)
      $display("PASS x=%b, y=%b",x,y);
    else
      $display("FAIL x=%b, y=%b",x,y);
    
    
    x=2'b01;
    #1;
    if(y==4'b0010)
      $display("PASS x=%b, y=%b",x,y);
    else
      $display("FAIL x=%b, y=%b",x,y);
    
    x=2'b10;
    #1;
    if(y==4'b0100)
      $display("PASS x=%b, y=%b",x,y);
    else
      $display("FAIL x=%b, y=%b",x,y);
    
    x=2'b11;
    #1
    if(y==4'b1000)
      $display("PASS x=%b, y=%b",x,y);
    else
      $display("FAIL x=%b, y=%b",x,y);
    $finish;
  end
endmodule  
