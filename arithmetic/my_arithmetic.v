`include "my_add16"

module my_arithmetic (input [15:0] a, b,
                      input         alu_zx, alu_nx, alu_zy, alu_ny, alu_f, alu_no,
                      output        out_halfadder_sum, out_halfadder_carry,
                                    out_fulladder_sum, out_fulladder_carry,
                                    alu_zr, alu_ng,
                      output [15:0] out_add16, alu_out);

   my_halfadder hw(a[0], b[0], out_halfadder_sum, out_halfadder_carry);
   my_fulladder fw(a[0], b[0], alu_zx, out_fulladder_sum, out_fulladder_carry);
   my_add16 aw(a, b, out_add16);
   my_alu alw(a, b, alu_zx, alu_nx, alu_zy, alu_ny, alu_f, alu_no, alu_out, alu_zr, alu_ng);
endmodule
