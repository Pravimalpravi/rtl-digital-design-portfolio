module shift_register_4bit(input logic clk, input logic serial_in, output logic [3:0] q);
  
  always_ff@(posedge clk) begin
    q[0]<=serial_in;
    q[1]<=q[0];
    q[2]<=q[1];				// based on vector direction, right shift or left 											shift can be decided 
    q[3]<=q[2];
  end
  
endmodule
