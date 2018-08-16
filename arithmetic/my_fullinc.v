module my_fullinc (input a, b,
                   output sum, carry);

   bit                    c;

   xor (c, a, b);
   not (sum, c);
   or (carry, a, b);
endmodule
