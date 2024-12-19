# The third make-file is the same as the second, 
# only with the use of auto-variables

# Variables
CC = gcc
CFLAGS = -Wall -Werror -g
TARGET = my_calc

# Source and Object files
SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ -lm

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@


