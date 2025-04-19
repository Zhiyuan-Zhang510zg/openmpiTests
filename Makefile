# set compilers based on machine
MPICC  = mpicc
CFLAGS   = -O2
OMPFLAG  = -fopenmp

# makefile targets
main.exe : main.c
	$(MPICC) $(CFLAGS) $^ -lm -o $@
debug:
	otool -L *.exe

clean:
	rm -f *.exe
