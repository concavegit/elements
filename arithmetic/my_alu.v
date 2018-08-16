`include "my_add16"
`include "../gates8way/my_mux16"
`include "my_or16way"

module my_alu (input shortint x, y,
               bit             zx, nx, zy, ny, f, no,
               output shortint out,
               bit             zr,
               bit             ng);

   shortint                    zx0, nx0, zy0, ny0, f0, f1, f2;
   bit                         nzx, nzy;

   not (nzx, zx),
     (nzy, zy);

   genvar                      i;

   generate
      for (i = 0; i < 16; i++) begin
         and (zx0[i], x[i], nzx),
        (zy0[i], y[i], nzy);
      end

      for (i = 0; i < 16; i++) begin
         xor (nx0[i], zx0[i], nx),
        (ny0[i], zy0[i], ny);
      end
   endgenerate

   and (f0, nx0, ny0);
   my_add16 aw(nx0, ny0, f1);
   my_mux16 mw(f0, f1, f, f2);

   generate
      for (i = 0; i < 16; i++) begin
         xor (out[i], f2[i], no);
      end
   endgenerate

   my_or16way ow(out, zr);
   assign ng = out[0];
endmodule
