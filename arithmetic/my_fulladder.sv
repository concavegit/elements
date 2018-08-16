module my_fulladder (input a, b, c,
                     output sum, carry);

   bit                      sum0, carry0, carry1;

   my_halfadder h0(a, b, sum0, carry0),
     h1(sum0, c, sum, carry1);
   or (carry, carry0, carry1);
endmodule
