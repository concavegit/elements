#include <verilated.h>
#include <verilated_vcd_c.h>

#include <Vmy_gates.h>

auto main_time = 0;

double sc_time_stamp() {return main_time;}

int main(int argc, char** argv)
{
  Verilated::commandArgs(argc, argv);
  Verilated::traceEverOn(true);

  Vmy_gates top;
  const auto tfp = new VerilatedVcdC;

  top.trace(tfp, 99);
  tfp->open("obj_dir/trace.vcd");

  for (auto i = 0; i < 8; i++)
    {
      top.in1 = i & (1 << 0);
      top.in2 = bool(i & 1 << 1);
      top.sel = bool(i & 1 << 2);

      top.eval();
      tfp->dump(main_time);
      main_time++;
    }

  top.final();
  tfp->close();
}
