#CC := gcc
CC :=  riscv64-linux-gnu-gcc
#CFLAGS := -Wall -O2
CFLAGS := -O3 -static

all: list.o

test: test_list
	./test_list

list.o: list.c list.h
	$(CC) $(CFLAGS) -c $< -o $@

test_list: test_list.c 
	$(CC) $(CFLAGS) $^ -o $@

clean:
	$(RM) test_list list.o
	
