# Compiler
CC = gcc


CFLAGS = -pthread -I./../include


TARGET = test

# Change next line if you want to test other test files EXP: test.c OR networktest.c
SRCS = ./test.c
SRCS += $(wildcard ./../source/*.c)
EXCLUDED_FILE = ./../source/mngmain.c \
				./../source/main.c
#EXCLUDED_FILE += ./../source/mng_network.c
SRCS := $(filter-out $(EXCLUDED_FILE), $(SRCS))

OBJS_NAMES := $(notdir $(SRCS))
OBJS = $(OBJS_NAMES:.c=.o)


all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -lm -o $@


%.o:
	$(CC) $(CFLAGS) -c $(filter %/$(basename $@).c, $(SRCS)) -o $@

run:
	@echo "Start executing..."
	./$(TARGET) 


clean:
	rm -f $(TARGET) $(OBJS)
	
.PHONY: all clean