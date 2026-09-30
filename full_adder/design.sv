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
