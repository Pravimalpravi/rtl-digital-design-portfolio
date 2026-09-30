module tb;
  
  logic clk;
  logic serial_in;
  logic[3:0] q;
  shift_register_4bit dut(.clk(clk),.serial_in(serial_in), .q(q));
  always #5 clk=~clk;
  initial begin
    clk=0;
    
    
    $dumpfile("dump.vcd");
    $dumpvars;
    
    @(negedge clk);
    serial_in=1'b0;
    @(posedge clk);
    $display("q: %b",q);
    @(negedge clk);
    serial_in=1'b1;
    @(posedge clk);
    $display("q: %b",q);
    @(negedge clk);
    serial_in=1'b1;
    @(posedge clk);
    $display("q: %b",q);
    @(negedge clk);
    serial_in=1'b0;
    @(posedge clk);
    $display("q: %b",q);
    @(negedge clk);
    serial_in=1'b1;
    @(posedge clk);
    $display("q: %b",q);
    
    $finish;
    
    
    
  end
  
  
endmodule
