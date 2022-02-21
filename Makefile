com:
	vcs -full64 \
	-cpp g++-4.8 \
	-cc gcc-4.8 \
	-LDFLAGS -Wl,--no-as-needed \
	-f filelist.f \
	+v2k \
	-sverilog \
	-debug_all \
	-l com.log

sim:
	./simv -gui=verdi -l sim.log &

clean:
	rm -rf simv* \
	DVEfiles \
	*.vpd \
	*.dump \
	csrc \
	libnz4w_r.soLog \
	*.sim \
	*.mra \
	*.log \
	ucli.key \
	session* \
	*.db \
	vcs.key \
	urgReport \
	*.h log \
	*.txt \
	scsim* \
	WORK/* \
	text \
	inter* \
	novas* \
	verdiLog \
	_vcs_cp_*
