TARGET=my_gates8way
.PHONY: all

$(TARGET):
	verilator -Wall -cc $(@).sv -trace -exe testbench.cpp
	make -C obj_dir -f V$(@).mk
