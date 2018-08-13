#include <verilated.h>
#include <verilated_vcd_c.h>

#include <Vmy_gates8way.h>

auto main_time = 0;
double sc_time_stamp() {return main_time;}

int main(int argc, char** argv)
{
  Verilated::commandArgs(argc, argv);
  Verilated::traceEverOn(true);

  Vmy_gates8way top;
  VerilatedVcdC tfp;

  top.trace(&tfp, 99);
  tfp.open("obj_dir/trace.vcd");

  for (auto i = 0; i < 256; i++)
    {
      top.in = i;
      top.eval();
      tfp.dump(main_time);
      main_time++;
    }
  top.final();
  tfp.close();
}
