module tb;

  logic a;
  logic b;
  logic Cin;
  logic sum;
  logic Cout;
  
  full_adder dut(.a(a),.b(b),.Cin(Cin),.sum(sum),.Cout(Cout));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    a=0;b=0;Cin=0;
    #1
    if(sum==0 && Cout==0)
      $display("PASS a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    else
      $display("FAIL a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    
    a=0;b=0;Cin=1;
    #1
    if(sum==1 && Cout==0)
      $display("PASS a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    else
      $display("FAIL a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    
    a=0;b=1;Cin=0;
    #1
    if(sum==1 && Cout==0)
      $display("PASS a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    else
      $display("FAIL a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    
    a=0;b=1;Cin=1;
    #1
    if(sum==0 && Cout==1)
      $display("PASS a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    else
      $display("FAIL a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    
    a=1;b=0;Cin=0;
    #1
    if(sum==1 && Cout==0)
      $display("PASS a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    else
      $display("FAIL a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    
    a=1;b=0;Cin=1;
    #1
    if(sum==0 && Cout==1)
      $display("PASS a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    else
      $display("FAIL a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    
    a=1;b=1;Cin=0;
    #1
    if(sum==0 && Cout==1)
      $display("PASS a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    else
      $display("FAIL a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    
    a=1;b=1;Cin=1;
    #1
    if(sum==1 && Cout==1)
      $display("PASS a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    else
      $display("FAIL a=%b b=%b Cin=%b sum=%b Cout=%b",a,b,Cin,sum,Cout);
    
    $finish;
    
  end
  
  
endmodule
