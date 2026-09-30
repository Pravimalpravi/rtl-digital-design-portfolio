module half_adder(input a, input b, output sum, output carry);
	assign sum= a^b;
  	assign carry=a&b;
endmodule


module full_adder(input a, input b,input Cin, output sum, output Cout);
  logic x;
  logic y;
  logic z;
  half_adder HA1(.a(a),.b(b),.sum(x),.carry(y));
  half_adder HA2(.a(x),.b(Cin),.sum(sum),.carry(z));
  assign Cout=y|z;
endmodule

module RCA_4bit(input logic[3:0]a,input logic[3:0]b,output logic [4:0] final_sum);
  logic [3:0]sum; logic Cout;
  logic x;logic y;logic z;
  full_adder full_adder1(.a(a[0]),.b(b[0]),.Cin(1'b0),.sum(sum[0]),.Cout(x));
 full_adder full_adder2(.a(a[1]),.b(b[1]),.Cin(x),.sum(sum[1]),.Cout(y));
 full_adder full_adder3(.a(a[2]),.b(b[2]),.Cin(y),.sum(sum[2]),.Cout(z));
 full_adder full_adder4(.a(a[3]),.b(b[3]),.Cin(z),.sum(sum[3]),.Cout(Cout));
  assign final_sum[0]=sum[0];
  assign final_sum[1]=sum[1];
  assign final_sum[2]=sum[2];
  assign final_sum[3]=sum[3];
  assign final_sum[4]=Cout;
endmodule
