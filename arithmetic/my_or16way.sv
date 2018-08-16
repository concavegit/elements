module my_or16way(input shortint a,
                  output out);

   bit                   b, c, d, e, f, g, h, i, j, k, l, m, n, o;

   or (b, a[0], a[1]),
     (c, a[2], a[3]),
     (d, a[4], a[5]),
     (e, a[6], a[7]),
     (f, a[8], a[9]),
     (g, a[10], a[11]),
     (h, a[12], a[13]),
     (i, a[14], a[15]),

     (j, b, c),
     (k, d, e),
     (l, f, g),
     (m, h, i),

     (n, j, k),
     (o, l, m),

     (out, n, o);
endmodule
