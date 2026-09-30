module tb;
  
  logic [3:0]a;
  logic [3:0]b;
  logic[4:0]final_sum;
  
  RCA_4bit dut(.a(a),.b(b),.final_sum(final_sum));
  
  initial begin
    
  //  $dumpfile ("dump.vcd");
  //  $dumpvars;
    for(int i=0;i<16;i++)begin
      for (int j=0;j<16;j++) begin
        a=i;
        b=j;
        #1;
        if(final_sum==i+j)
          $display("PASS a=%b b=%b final_sum=%b",a,b,final_sum);
         else
           $display("FAIL a=%b b=%b final_sum=%b",a,b,final_sum);       
      end
     end
    $finish;
  end
  
endmodule
