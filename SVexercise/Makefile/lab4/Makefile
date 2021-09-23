#############################
# User variables
#############################
TB       = tb
SEED     = 1
TESTNAME ?= mcdf_data_consistence_basic_test
DFILES   = ../mcdf/arbiter.v ../mcdf/slave_fifo.v ../mcdf/reg.v ../mcdf/formater.v ../mcdf/mcdf.v
VFILES  += rpt_pkg.sv arb_pkg.sv chnl_pkg.sv fmt_pkg.sv reg_pkg.sv mcdf_pkg.sv $(TB).sv


#############################
# Environment variables
#############################
VCOMP                = vlogan -full64 -sverilog -timescale=1ps/1ps -nc -l comp.log +incdir+../mcdf
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

