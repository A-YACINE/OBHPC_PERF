CC=gcc
CFLAGS=-g -Wall
OFLAGS=-O0

INTEL_LFLAGS=-qmkl
GNU_LFLAGS=-lm -lblas

FILES=main.c tools.c kernels.c

all: dgemm

dgemm:
ifeq ($(CC),icc)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(CC),icx)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(CC),gcc)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(CC),clang)
	$(CC) $(CFLAGS) $(OFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
	@echo "ERROR: no compiler specified using CC. Possible values for CC: gcc, icc, icx, clang"
endif
endif
endif
endif

plot:
	gnuplot -e "compiler = 'gcc'" plot.plt
	gnuplot -e "compiler = 'clang'" plot.plt
	gnuplot "ccplot.plt"
	gnuplot -e "compiler = 'gcc'" plot.plt"
	gnuplot -e "compiler = 'clang'" plot.plt"





clean:
	@rm -Rf dgemm
