rm -rf obj_dir
rm -f Vram.vcd

verilator -Wall --cc --trace ram.sv --exe sigdelay_tb.cpp
make -j -C obj_dir/ -f Vram.mk Vram

obj_dir/Vram
