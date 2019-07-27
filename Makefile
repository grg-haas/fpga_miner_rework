# makefile settings
MAIN_TB  := miner_tb
SIM_TIME := 1ms

KCPSM6_PROGRAMS := main core
VHDL_DESIGN     := kcpsm6 uart_tx6 uart_rx6 miner core \
			       msa_extender hash_circuitry         \
				   core_hash_wrapper core_msa_wrapper
VHDL_SIMULATION := sim_clk miner_tb core_tb

# various forms of the module names

VHD_KCPSM6_PROGRAMS := $(addprefix .out/vhdl/, $(addsuffix _prog.vhd, $(KCPSM6_PROGRAMS)))
VHD_VHDL_DESIGN     := $(addprefix src/vhdl/, $(addsuffix .vhd, $(VHDL_DESIGN)))
VHD_VHDL_SIMULATION := $(addprefix src/vhdl_sim/, $(addsuffix .vhd, $(VHDL_SIMULATION)))

# command args
GHDL_INS_ARGS  := --workdir=.out/obj
GHDL_MAKE_ARGS := --workdir=.out/obj \
			 	  --ieee=synopsys    \
				  --warn-no-hide     \
			 	  -fexplicit -O2     \
			 	  -P/home/grg/Projects/fpga/xilinx_libs

SIM_ARGS       := --stop-time=$(SIM_TIME)    \
                  --wave=.out/$(MAIN_TB).ghw \
				  --unbuffered

# formatting related
COLOR_RED   := \033[0;31m
COLOR_GREEN := \033[0;32m
COLOR_BLUE  := \033[0;34m
COLOR_NC    := \033[0m

build: .out/$(MAIN_TB)
clean: ;rm -rf .out

simulate: .out/$(MAIN_TB).ghw
	@echo "$(COLOR_BLUE)~~~Simulation up to date, launching viewer...~~~$(COLOR_NC)"
	@gtkwave .out/$(MAIN_TB).ghw conf/$(MAIN_TB).gtkw

.out/$(MAIN_TB).ghw: .out/$(MAIN_TB)
	@echo "$(COLOR_BLUE)~~~Build is up to date, running simulation~~~$(COLOR_NC)"
	time -p .out/$(MAIN_TB) $(SIM_ARGS)

.out/$(MAIN_TB) : $(VHD_KCPSM6_PROGRAMS) \
 				  $(VHD_VHDL_DESIGN)     \
				  $(VHD_VHDL_SIMULATION)
	@echo "$(COLOR_BLUE)~~~Importing files and beginning elaboration~~~$(COLOR_NC)"

	@mkdir -p .out/obj
	ghdl -i $(GHDL_INS_ARGS) $?
	ghdl -m $(GHDL_MAKE_ARGS) -o $@ $(notdir $@)

$(VHD_KCPSM6_PROGRAMS): .out/vhdl/%_prog.vhd: src/psm/%.psm
	@# here, $(basename $(notdir $<)) represents name without _prog
	@#       $(basename $(notdir $@)) represents name with _prog

	@mkdir -p .out/vhdl
	@echo "$(COLOR_GREEN)~~~Assembling $<~~~$(COLOR_NC)"
	opbasm -n $(basename $(notdir $@)) -6 -q \
		   -t src/psm/templates/$(basename $(notdir $<))_form.vhd \
		   -i $< -o .out/vhdl/

	@mkdir -p .out/debug
	@mv .out/vhdl/$(basename $(notdir $@)).log .out/debug
	@mv .out/vhdl/$(basename $(notdir $@)).mem .out/debug
	@mv .out/vhdl/$(basename $(notdir $<)).fmt .out/debug
