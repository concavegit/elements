module my_and8way (input byte in,
                   output out);

   bit                    a, b, c, d, e, f;

   and (a, in[0], in[1]),
     (b, in[2], in[3]),
     (c, in[4], in[5]),
     (d, in[6], in[7]),

     (e, a, b),
     (f, c, d),

     (out, e, f);
endmodule
