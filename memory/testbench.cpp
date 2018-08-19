#include <verilated.h>
#include <verilated_vcd_c.h>

#include <Vmemory.h>

auto main_time = 0;

double sc_time_stamp() {return main_time;}

int main(int argc, char** argv)
{
  Verilated::commandArgs(argc, argv);
  Verilated::traceEverOn(true);

  Vmemory top;
  VerilatedVcdC tfp;

  top.trace(&tfp, 99);
  tfp.open("obj_dir/trace.vcd");

  for (auto i = 0; i < 16; i++)
    {
      top.in = rand();
      top.load = rand();
      top.eval();
      tfp.dump(main_time);

      top.clock = !top.clock;
      main_time++;
    }

  top.final();
  tfp.close();
}
