CC			:= gcc
CXX			:= g++

MPICC			:= mpicc
MPICXX			:= mpicxx

CCFLAGS			:= -O3 -march=native -std=gnu99 
CXXFLAGS		:= -O3 -march=native -std=gnu++03
LDFLAGS			:= -lX11 -fopenmp -lm 

all: MS_hybrid MS_seq

MS_seq: MS_seq.c
	$(CC) -O3 -o $@ $?
MS_hybrid: MS_s105062553.c
	$(MPICC) $(CCFLAGS) $(LDFLAGS) -o $@ $?
clean:
	rm -f MS_seq MS_hybrid
