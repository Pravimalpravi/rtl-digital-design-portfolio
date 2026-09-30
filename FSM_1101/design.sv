module seq_1101 (input logic clk,input logic reset,input logic x, output logic y);
  typedef enum logic[1:0]{
    s0=2'b00,
    s1=2'b01,
    s2=2'b10,
    s3=2'b11
  } state_t ;
  
  state_t state=s0;
  state_t next_state;
  
  
  always_ff @(posedge clk) begin
    if(!reset)
      state <= s0;
    else
      state <= next_state;
  end
  
  always_comb begin
    next_state=s0;
    case(state)
      s0: if (x==0)
        	next_state=s0;
      	  else 
            next_state=s1;
      s1: if (x==0)
        	next_state=s0;
      	  else 
            next_state=s2;
      s2: if (x==0)
        	next_state=s3;
      	  else 
            next_state=s2;
      s3: if (x==0)
        	next_state=s0;
      	  else 
            next_state=s1;
      default:next_state=s0;
    endcase  
  end
  
  always_comb begin
    if(state==s3 && x==1)
      y=1;
    else
      y=0;
  end
  
endmodule  
