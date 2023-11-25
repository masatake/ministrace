GEN_TABLES=./gen_tables.py
LINUX_DIST_SRC=/usr/src/kernels/$(shell uname -r)/
LINUX_SRC=$(shell test -d $(LINUX_DIST_SRC) && echo $(LINUX_DIST_SRC) || echo /usr/src/linux/)
PYTHON=$(shell type python3 > /dev/null && echo python3 || echo "")

all: ministrace

ministrace.o: syscalls.h syscallents.h

syscallents.h: $(GEN_TABLES)
	$(PYTHON) $(GEN_TABLES) $(LINUX_SRC)
