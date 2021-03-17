module tcounter (CLK, CLR, ENT, ENP, Q);

input CLK, CLR, ENP, ENT;
output [3:0]Q;

wire [3:0] IN;
assign IN[0]=(ENP & ENT);
assign IN[1]=(Q[0] & ENP & ENT);
assign IN[2]=(Q[1] & Q[0] & ENP & ENT);
assign IN[3]=(Q[2] & Q[1] & Q[0] & ENP & ENT);

treg4bit one(
.CLK(CLK),
.RESET(~CLR),
.IN(IN),
.OUT(Q)
);
endmodule