module lab1(CLK, RESET, ENABLE, TIME, MIN, TENSEC, SEC, DECISEC, CENTISEC);
  input         CLK;
  input         RESET;
  input         ENABLE;

  output [19:0] TIME;
  output [3:0]  MIN;
  output [3:0]  TENSEC;
  output [3:0]  SEC;
  output [3:0]  DECISEC;
  output [3:0]  CENTISEC;


  // ADD YOUR CODE BELOW THIS LINE
  
tcounter one(
.CLR(~(RESET || CENTISEC==4'd9)),
.ENP(ENABLE),
.ENT(1'b1),
.CLK(CLK),
.Q(CENTISEC)
);

tcounter two(
.CLR(~(RESET || (CENTISEC==4'd9 && DECISEC==4'd9))),
.ENP(ENABLE),
.ENT(CENTISEC==4'd9),
.CLK(CLK),
.Q(DECISEC)
);

tcounter three(
.CLR(~(RESET || (CENTISEC==4'd9 && DECISEC==4'd9 && SEC==4'd9))),
.ENP(ENABLE),
.ENT(CENTISEC==4'd9 && DECISEC==4'd9),
.CLK(CLK),
.Q(SEC)
);

tcounter four(
.CLR(~(RESET || (CENTISEC==4'd9 && DECISEC==4'd9 && SEC==4'd9 && TENSEC==4'd5))),
.ENP(ENABLE),
.ENT(CENTISEC==4'd9 && DECISEC==4'd9 && SEC==4'd9),
.CLK(CLK),
.Q(TENSEC)
);
  
tcounter five(
.CLR(~(RESET || (CENTISEC==4'd9 && DECISEC==4'd9 && SEC==4'd9 && TENSEC==4'd5 && MIN==4'd9))),
.ENP(ENABLE),
.ENT(CENTISEC==4'd9 && DECISEC==4'd9 && SEC==4'd9 && TENSEC==4'd5),
.CLK(CLK),
.Q(MIN)
);  
  
  // ADD YOUR CODE ABOVE THIS LINE

  assign TIME = {MIN, TENSEC, SEC, DECISEC, CENTISEC};

endmodule
