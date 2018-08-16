module my_mux (input in1, in2, sel,
               output out);

   bit                a, b, c;

   nand (a, sel, sel),
     (b, in1, a),
     (c, sel, in2),
     (out, b, c);
endmodule
