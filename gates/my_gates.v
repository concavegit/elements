`include "my_not.v"
`include "my_and.v"
`include "my_or.v"
`include "my_xor.v"
`include "my_mux.v"
`include "my_dmux.v"

module my_gates(input in1,
                input  in2,
                input  sel,
                output out_not,
                output out_and,
                output out_or,
                output out_xor,
                output out_mux,
                output out_dmux1,
                output out_dmux2);

   my_not nw(in1, out_not);
   my_and aw(in1, in2, out_and);
   my_or ow(in1, in2, out_or);
   my_xor xw(in1, in2, out_xor);
   my_mux mw(in1, in2, sel, out_mux);
   my_dmux dw(in1, sel, out_dmux1, out_dmux2);
endmodule
