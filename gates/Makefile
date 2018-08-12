TARGET=my_gates
.PHONY: all

$(TARGET):
	verilator -cc $(@).v -trace -exe testbench.cpp
	make -C obj_dir -f V$(@).mk
