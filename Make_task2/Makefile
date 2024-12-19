# For each of the three files, a corresponding "*.mk" file must be added 
# (for example, make1.mk, make2.mk, etc.) - their task is to create from the                 corresponding source code files - object files
# 1.2) One file with main function (for example main.c)
#    Add the main Makefile which should:
#       1.2.1) Create an object file from a file with the main function
#       1.2.2) And also call the three *.mk files (added in point 1.1) using one of two methods
#                Method 1: Using the command - "make -f"
#                Method 2: Using the "include" command
#                The choice of method depends on the value of the environment 
#                variable that needs to be added
#        1.2.3) Link all created object files into an executable file
#        1.2.4) Add target clean
#        1.3) Add an empty file named "clean"

all: us_make my_calc

my_calc: main.o calcint.o calcdbl.o
	gcc -Wall -Werror -g -o $@ $^ -lm
	
us_make:
ifdef USE_INCLUDE
include make1.mk
include make2.mk
include make3.mk
else
	make -f make1.mk
	make -f make2.mk
	make -f make3.mk
endif

clean:
	rm -f *.o my_calc

.PHONY: clean us_make all
