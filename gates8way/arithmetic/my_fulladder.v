`include "my_halfadder"
module my_fulladder (input a,
                     input  b,
                     input  c,
                     output sum,
                     output carry);

   wire                     sum1, carry1, carry2;
   
   my_halfadder h1(a, b, sum1, carry1);
   my_halfadder h2(sum1, c, sum, carry2);
   or (carry, carry1, carry2);
endmodule
