module my_dmux (input in, sel,
                output out0, out1);

   bit                 a, b, c;

   nand (a, sel, sel),
     (b, in, a),
     (out0, b, b),

     (c, in, sel),
     (out1, c, c);
endmodule
