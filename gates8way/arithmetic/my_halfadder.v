module my_halfadder (input a, b,
                     output sum, carry);

   wire                     c, d, e;
   
   nand (c, a, b),
     (carry, c, c),

     (d, c, a),
     (e, c, b),
     (sum, d, e);
endmodule 
