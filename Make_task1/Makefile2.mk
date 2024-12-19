# The second make file must have several targets 
# (one target for each source code file) without any auto-variables

all: main.o calcint.o calcdbl.o
	gcc -Wall -Werror -g -o my_calc main.o calcint.o calcdbl.o -lm

main.o: main.c
	gcc -Wall -Werror -g -c main.c

calcint.o: calcint.c
	gcc -Wall -Werror -g -c calcint.c

calcdbl.o: calcdbl.c
	gcc -Wall -Werror -g -c calcdbl.c

