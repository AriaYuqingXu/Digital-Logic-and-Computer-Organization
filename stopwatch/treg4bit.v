module treg4bit(IN, OUT, CLK, RESET );

 input CLK;
 input RESET;
 input  [3:0] IN;
 output [3:0] OUT;
 
 tffp one (
  .CLK(CLK),
  .RESET(RESET),
  .T(IN[0]),
  .Q(OUT[0])
 );
 
 tffp two (
  .CLK(CLK),
  .RESET(RESET),
  .T(IN[1]),
  .Q(OUT[1])
 );
 
 tffp three (
  .CLK(CLK),
  .RESET(RESET),
  .T(IN[2]),
  .Q(OUT[2])
 );
 
 tffp four (
  .CLK(CLK),
  .RESET(RESET),
  .T(IN[3]),
  .Q(OUT[3])
 );
 
 
 
 endmodule


