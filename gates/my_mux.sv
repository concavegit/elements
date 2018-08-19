module my_mux (input in0, in1, sel,
               output out);

   bit                a, b, c;

   nand (a, sel, sel),
     (b, in0, a),
     (c, sel, in1),
     (out, b, c);
endmodule
