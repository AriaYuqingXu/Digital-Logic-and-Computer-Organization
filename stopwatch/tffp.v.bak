module tffp (RESET, CLK, T, Q);

input CLK;
input RESET;
input T;
output reg Q;

always @(posedge CLK)
begin
if (RESET==1)
	   Q<=0;
else if(RESET==0 && T==1)
	if(Q==1)
		Q<=0;
	else if (Q==0)
		Q<=1;
else if(RESET==0 && T==0)
		Q<=Q; //we don't want any inferred latches 
		
end

endmodule 