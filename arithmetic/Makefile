TARGET=my_arithmetic
.PHONY: all

$(TARGET):
	verilator -Wall -cc $(@).sv -trace -exe testbench.cpp
	make -C obj_dir -f V$(@).mk
