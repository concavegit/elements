`include "my_halfadder"

module my_fulladder (input a,
                     input  b,
                     input  c,
                     output sum,
                     output carry);

   wire                     sum0, carry0, carry1;

   my_halfadder h0(a, b, sum0, carry0),
     h1(sum0, c, sum, carry1);
   or (carry, carry0, carry1);
endmodule
