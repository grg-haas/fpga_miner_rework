# makefile settings
MAIN_TB   := miner_tb
SIM_TIME := 6ms

KCPSM6_PROGRAMS := main core
VHDL_DESIGN     := kcpsm6 uart_tx6 uart_rx6 miner core
VHDL_SIMULATION := sim_clk miner_tb core_tb

# various forms of the module names
OBJ_KCPSM6_PROGRAMS := $(addprefix out/obj/, $(addsuffix _prog.o, $(KCPSM6_PROGRAMS)))
OBJ_VHDL_DESIGN     := $(addprefix out/obj/, $(addsuffix .o, $(VHDL_DESIGN)))
OBJ_VHDL_SIMULATION := $(addprefix out/obj/, $(addsuffix .o, $(VHDL_SIMULATION)))

VHD_KCPSM6_PROGRAMS := $(addprefix out/vhdl/, $(addsuffix _prog.vhd, $(KCPSM6_PROGRAMS)))

# command args
GHDL_ARGS := --workdir=out/obj \
			 --ieee=synopsys   \
			 -fexplicit -O2        \
			 -P/home/grg/Projects/fpga/xilinx_libs

SIM_ARGS := --stop-time=$(SIM_TIME) --wave=out/$(MAIN_TB).ghw --unbuffered

# formatting related
COLOR_RED   := \033[0;31m
COLOR_GREEN := \033[0;32m
COLOR_BLUE  := \033[0;34m
COLOR_NC    := \033[0m

simulate: out/$(MAIN_TB).ghw
	@echo "$(COLOR_BLUE)~~~Simulation up to date, launching viewer...~~~$(COLOR_NC)"
	@gtkwave out/$(MAIN_TB).ghw conf/$(MAIN_TB).gtkw

build: out/$(MAIN_TB)

clean:
	rm -rf out

out/$(MAIN_TB).ghw: out/$(MAIN_TB)
	@echo "$(COLOR_BLUE)~~~Build is up to date, running simulation~~~$(COLOR_NC)"
	time -p ./out/$(MAIN_TB) $(SIM_ARGS)

out/$(MAIN_TB) : $(addprefix out/obj/, 						 \
				    $(addsuffix _prog.o, $(KCPSM6_PROGRAMS)) \
				    $(addsuffix .o, $(VHDL_DESIGN) $(VHDL_SIMULATION)))

	ghdl -e $(GHDL_ARGS) -o $@ $(notdir $@)

$(OBJ_KCPSM6_PROGRAMS): out/obj/%.o: out/vhdl/%.vhd
	@mkdir -p out/obj
	@echo "$(COLOR_GREEN)~~~Compiling program VHDL file $<~~~$(COLOR_NC)"
	ghdl -a $(GHDL_ARGS) $<

$(OBJ_VHDL_DESIGN): out/obj/%.o: src/vhdl/%.vhd
	@mkdir -p out/obj
	@echo "$(COLOR_GREEN)~~~Compiling design VHDL file $<~~~$(COLOR_NC)"
	ghdl -a $(GHDL_ARGS) $<

$(OBJ_VHDL_SIMULATION): out/obj/%.o: src/vhdl_sim/%.vhd
	@mkdir -p out/obj
	@echo "$(COLOR_GREEN)~~~Compiling simulation VHDL file $<~~~$(COLOR_NC)"
	ghdl -a $(GHDL_ARGS) $<

$(VHD_KCPSM6_PROGRAMS): out/vhdl/%_prog.vhd: src/psm/%.psm
	@# here, $(basename $(notdir $<)) represents name without _prog
	@#       $(basename $(notdir $@)) represents name with _prog

	@mkdir -p out/vhdl
	@echo "$(COLOR_GREEN)~~~Assembling $<~~~$(COLOR_NC)"
	opbasm -n $(basename $(notdir $@)) -6 -q \
		   -t src/psm/templates/$(basename $(notdir $<))_form.vhd \
		   -i $< -o out/vhdl/

	@mkdir -p out/debug
	@mv out/vhdl/$(basename $(notdir $@)).log out/debug
	@mv out/vhdl/$(basename $(notdir $@)).mem out/debug
	@mv out/vhdl/$(basename $(notdir $<)).fmt out/debug
