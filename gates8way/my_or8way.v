module my_or8way (input [7:0] in,
                  output out);

   wire                   a, b, c, d, e, f;

   or (a, in[0], in[1]);
   or (b, in[2], in[3]);
   or (c, in[4], in[5]);
   or (d, in[6], in[7]);

   or (e, a, b);
   or (f, c, d);

   or (out, e, f);
endmodule
