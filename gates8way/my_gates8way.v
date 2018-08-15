`include "my_and8way.v"
`include "my_or8way.v"
`include "my_mux8way16.v"
`include "my_dmux8way.v"

module my_gates8way(input [15:0] in0, in1, in2, in3, in4, in5, in6,
                    in7,
                    input [2:0]   sel,

                    output        out_and, out_or,
                                  out_dmux0, out_dmux1, out_dmux2, out_dmux3,
                                  out_dmux4, out_dmux5, out_dmux6, out_dmux7,

                    output [15:0] out_mux16);

   genvar                         i;

   wire [7:0]                     a;

   generate
      for (i = 0; i < 8; i = i + 1) begin
         assign a[i] = in0[i];
      end
   endgenerate

   my_and8way aw(a, out_and);
   my_or8way ow(a, out_or);
   my_mux8way16 mw(in0, in1, in2, in3, in4, in5, in6, in7, sel, out_mux16);
   my_dmux8way dw(in0[0], sel, out_dmux0, out_dmux1, out_dmux2, out_dmux3, out_dmux4, out_dmux5, out_dmux6, out_dmux7);
endmodule
