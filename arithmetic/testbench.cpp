#include <verilated.h>
#include <verilated_vcd_c.h>

#include <Vmy_arithmetic.h>

auto main_time = 0;

double sc_time_stamp() {return main_time;}

int main(int argc, char** argv)
{
  Verilated::commandArgs(argc, argv);
  Verilated::traceEverOn(true);

  Vmy_arithmetic top;
  VerilatedVcdC tfp;

  top.trace(&tfp, 99);
  tfp.open("obj_dir/trace.vcd");

  // TODO: Add test
  
  top.final();
  tfp.close();
}
