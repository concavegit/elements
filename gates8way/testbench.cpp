#include <verilated.h>
#include <verilated_vcd_c.h>
#include <cmath>

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

  for (auto i = 0; i < pow(2, 131); i++)
    {
      top.sel = i % 8;
      int ins[8];
      for (auto j = 0; j < 8; j++)
        {
          ins[j] = (i % int(pow(2, 16 * j + 19))) / pow(2, 16 * j + 3);
        }

      top.in0 = ins[0];
      top.in1 = ins[1];
      top.in2 = ins[2];
      top.in3 = ins[3];
      top.in4 = ins[4];
      top.in5 = ins[5];
      top.in6 = ins[6];
      top.in7 = ins[7];

      top.eval();
      tfp.dump(main_time);
      main_time++;
    }
  top.final();
  tfp.close();
}
