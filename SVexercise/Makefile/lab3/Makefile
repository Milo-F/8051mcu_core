#############################
# User variables
#############################
TB        = tb1
SEED      = 1
DFILES    = ../mcdt/arbiter.v ../mcdt/slave_fifo.v ../mcdt/mcdt.v
TESTNAME ?= chnl_basic_test 
ifeq (tb1, $(strip $(TB)))
VFILES   = chnl_pkg1.sv 
endif
ifeq (tb2, $(strip $(TB)))
VFILES   = chnl_pkg2.sv 
endif
ifeq (tb3, $(strip $(TB)))
VFILES   = chnl_pkg3.sv 
endif
ifeq (tb3_ref, $(strip $(TB)))
VFILES   = chnl_pkg3_ref.sv 
endif
VFILES  += $(TB).sv



#############################
# Environment variables
#############################
VCOMP                = vlogan -full64 -sverilog -timescale=1ps/1ps -nc -l comp.log 
ELAB                 = vcs -full64 -debug_all -l elab.log -sim_res=1ps 
RUN                  = $(TB).simv -l run.log -sml +ntb_random_seed=$(SEED) +TESTNAME=$(TESTNAME)
MODULE_LOAD_SH      ?= module load
MODULE_UNLOAD_SH    ?= module unload
VCSMX_VERSION       ?= vcsmx/L-2016.06-SP2-10
MODULE_FILE         ?= /p/inway/flow/fv4iw_7.0fp2/etc/modulefiles
VCSMX_MODULE         = . /p/inway_arch/tools/opensource/Modules/3.2.10-i01/init/sh; $(MODULE_UNLOAD_SH) vcsmx VCSMX; \
. /p/inway_arch/tools/opensource/Modules/3.2.10-i01/init/sh;module use $(MODULE_FILE); . /p/inway_arch/tools/opensource/Modules/3.2.10-i01/init/sh; $(MODULE_LOAD_SH) $(VCSMX_VERSION)

comp:
	$(VCSMX_MODULE); $(VCOMP) $(DFILES) $(VFILES)

elab: comp
	$(VCSMX_MODULE); $(ELAB) -top $(TB) -o $(TB).simv

run:
	$(VCSMX_MODULE); $(RUN) 

rung:
	$(VCSMX_MODULE); $(RUN) -gui

clean:
	rm -rf AN.DB DVEfiles csrc *.simv *.simv.daidir ucli.key
	rm -rf *.log *.vpd 

