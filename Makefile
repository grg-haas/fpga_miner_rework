KCPSM6_PROGRAMS := main core
VHDL_DESIGN     := kcpsm6 uart_tx6 uart_rx6 miner core
VHDL_SIMULATION := sim_clk miner_tb

OBJ_KCPSM6_PROGRAMS := $(addprefix out/obj/, $(addsuffix _prog.o, $(KCPSM6_PROGRAMS)))
OBJ_VHDL_DESIGN     := $(addprefix out/obj/, $(addsuffix .o, $(VHDL_DESIGN)))
OBJ_VHDL_SIMULATION := $(addprefix out/obj/, $(addsuffix .o, $(VHDL_SIMULATION)))

VHD_KCPSM6_PROGRAMS := $(addprefix out/vhdl/, $(addsuffix _prog.vhd, $(KCPSM6_PROGRAMS)))

GHDL_ARGS := --workdir=out/obj \
			 --ieee=synopsys   \
			 -fexplicit        \
			 -P/home/grg/Projects/fpga/xilinx_libs -O2

MAIN_TB   := miner_tb
STOP_TIME := 10us

simulate: out/$(MAIN_TB)
	./out/$(MAIN_TB) --stop-time=$(STOP_TIME) --wave=out/sim_wave.ghw
	( gtkwave out/sim_wave.ghw ) &

out/$(MAIN_TB) : $(addprefix out/obj/, 						 \
				$(addsuffix _prog.o, $(KCPSM6_PROGRAMS)) \
				$(addsuffix .o, $(VHDL_DESIGN) $(VHDL_SIMULATION)))

	ghdl -e $(GHDL_ARGS) -o $@ $(notdir $@)
	@echo "Elaboration finished, beginning simulation..."

$(OBJ_KCPSM6_PROGRAMS): out/obj/%.o: out/vhdl/%.vhd
	@mkdir -p out/obj
	ghdl -a $(GHDL_ARGS) $<

$(OBJ_VHDL_DESIGN): out/obj/%.o: src/vhdl/%.vhd
	@mkdir -p out/obj
	ghdl -a $(GHDL_ARGS) $<

$(OBJ_VHDL_SIMULATION): out/obj/%.o: src/vhdl_sim/%.vhd
	@mkdir -p out/obj
	ghdl -a $(GHDL_ARGS) $<

$(VHD_KCPSM6_PROGRAMS): out/vhdl/%_prog.vhd: src/psm/%.psm
	@# here, $(basename $(notdir $<)) represents name without _prog
	@#       $(basename $(notdir $@)) represents name with _prog

	@mkdir -p out/vhdl
	@echo "Assembling $<"
	@opbasm -n $(basename $(notdir $@)) -6 -q \
		    -t src/psm/templates/$(basename $(notdir $<))_form.vhd \
		    -i $< -o out/vhdl/

	@rm out/vhdl/$(basename $(notdir $@)).log
	@rm out/vhdl/$(basename $(notdir $@)).mem
	@rm out/vhdl/$(basename $(notdir $<)).fmt

clean:
	rm -rf out
