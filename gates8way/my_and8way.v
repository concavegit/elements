module my_and8way (input [7:0] in,
                   output out);

   wire                   a, b, c, d, e, f;

   and (a, in[0], in[1]);
   and (b, in[2], in[3]);
   and (c, in[4], in[5]);
   and (d, in[6], in[7]);

   and (e, a, b);
   and (f, c, d);

   and (out, e, f);
endmodule
