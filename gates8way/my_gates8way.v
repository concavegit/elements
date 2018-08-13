`include "my_and8way.v"
`include "my_or8way.v"

module my_gates8way(input [7:0] in,
                    output out_and,
                    output out_or);

   my_and8way aw(in, out_and);
   my_or8way ow(in, out_or);
endmodule
