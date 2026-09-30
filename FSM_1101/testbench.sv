module tb;
  logic clk;
  logic reset;
  logic x;
  logic y;
  
  seq_1101 dut(
    .clk(clk),
    .reset(reset),
    .x(x),
    .y(y)
  );
  
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  initial begin
    clk=0;
  end
  
  always #5 clk=~clk;
  
  initial begin
    reset=0;
    x=0;
    #17;
    reset=1;
    send_bit(1,0);
    send_bit(1,0);
    send_bit(0,0);
    send_bit(1,1);
    $finish;
  end
  
  task send_bit( logic in ,  logic out);
    @(negedge clk);
    x=in;
    #1;
    if(y==out)
      $display("PASS : x=%b, y=%b, expected y =%b",x,y,out);
    else
      $display("FAIL : x=%b, y=%b, expected y =%b",x,y,out);
  endtask
  
endmodule  
