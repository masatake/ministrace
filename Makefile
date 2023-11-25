GEN_TABLES=./gen_tables.py
LINUX_DIST_SRC=/usr/src/kernels/$(shell uname -r)/
LINUX_SRC=$(shell test -d $(LINUX_DIST_SRC) && echo $(LINUX_DIST_SRC) || echo /usr/src/linux/)

all: ministrace

ministrace.o: syscalls.h syscallents.h

syscallents.h: $(GEN_TABLES)
	$(GEN_TABLES) $(LINUX_SRC)
