module comb(W, X, Y, Z, OUT, OUTNAND);

 input  W;
 input  X;
 input  Y;
 input  Z;
  
 output reg OUT;
 output reg OUTNAND;
  
 // assign OUT = (W | ~X & ~Z | X & Z | Y & Z);
 // assign OUTNAND = ~(~W & ~(~X & ~Z) & ~(X & Z) & ~(Y & Z));
 
 always @(W, X, Y, Z)
 begin
	OUT = (W | ~X & ~Z | X & Z | Y & Z);
	OUTNAND = ~(~W & ~(~X & ~Z) & ~(X & Z) & ~(Y & Z));
 end
 
endmodule
