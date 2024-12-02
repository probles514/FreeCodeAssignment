# Define variables for compiler and flags
CC = gcc
CFLAGS = -Wall -g

# Define the target executable
TARGET = freeCode

# Define the source files
SRCS = freeCode.c

# Define the object files
OBJS = $(SRCS:.c=.o)

# Default target: build the executable
all: $(TARGET)

# Rule to build the executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)

# Rule to build object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean target: remove object files and executable
clean:
	rm -f $(OBJS) $(TARGET)

# Run target: execute the program
run: $(TARGET)
	./$(TARGET)