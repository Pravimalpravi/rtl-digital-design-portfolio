module tb;
  logic a;
  logic b;
  logic sum;
  logic carry;
  
  half_adder dut(.a(a),.b(b),.sum(sum),.carry(carry));
  
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars;
    
    a=0;
    b=0;
    #1;
    if(sum==0 && carry ==0)
      $display ("PASS a=%b b=%b sum=%b carry=%b",a,b,sum,carry);
    else 
      $display ("FAIL a=%b b=%b sum=%b carry=%b",a,b,sum,carry);
    a=0;b=1;
    #1;
    if(sum==1 && carry ==0)
      $display ("PASS a=%b b=%b sum=%b carry=%b",a,b,sum,carry);
    else 
      $display ("FAIL a=%b b=%b sum=%b carry=%b",a,b,sum,carry);
    a=1;b=0;
    #1;
    if(sum==1 && carry ==0)
      $display ("PASS a=%b b=%b sum=%b carry=%b",a,b,sum,carry);
    else 
      $display ("FAIL a=%b b=%b sum=%b carry=%b",a,b,sum,carry);
    a=1;b=1;
    #1;
    if(sum==0 && carry ==1)
      $display ("PASS a=%b b=%b sum=%b carry=%b",a,b,sum,carry);
    else 
      $display ("FAIL a=%b b=%b sum=%b carry=%b",a,b,sum,carry);
  	$finish;
  end
  
  
endmodule
