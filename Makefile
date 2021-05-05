SRC_DIR := src
CC ?= gcc
CFLAGS := -Wall -O2 -I inc/

SRC := $(wildcard $(SRC_DIR)/*.c)
OBJ = $(SRC:$(SRC_DIR)/%.c=$(SRC_DIR)/%.o)

# define the executable file
MAIN =test.c
EXEC =test.out

.PHONY:	depend clean

all:	$(EXEC) $OBJ)

$(EXEC):	$(OBJ)
	$(CC) $(CFLAGS) $(MAIN) -o $(EXEC) $(OBJ)
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) -rv $(OBJ) $(EXEC)
