`include "my_not.v"
`include "my_and.v"
`include "my_or.v"
`include "my_xor.v"
`include "my_mux.v"
`include "my_dmux.v"

module my_gates(input in0, in1, sel,
                output out_not, out_and, out_or, out_xor, out_mux,
                out_dmux1, out_dmux2);

   my_not nw(in0, out_not);
   my_and aw(in0, in1, out_and);
   my_or ow(in0, in1, out_or);
   my_xor xw(in0, in1, out_xor);
   my_mux mw(in0, in1, sel, out_mux);
   my_dmux dw(in0, sel, out_dmux1, out_dmux2);
endmodule
