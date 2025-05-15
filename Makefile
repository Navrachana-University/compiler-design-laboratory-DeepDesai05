# Compiler and tools
CC = gcc
LEX = flex
YACC = bison

# Flags
CFLAGS = -std=c99 -Wall -g
YFLAGS = -d

# Source files
LEX_SRC = src/lexer.l
YACC_SRC = src/parser.y
SRCS = src/main.c

# Generated files
LEX_GEN = src/lex.yy.c
YACC_GEN_H = src/parser.tab.h
YACC_GEN_C = src/parser.tab.c
OBJS = src/lex.yy.o src/parser.tab.o src/main.o

# Output executable
TARGET = bin/gujc

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	@mkdir -p bin
	$(CC) $(CFLAGS) -o $@ $^

src/lex.yy.c: $(LEX_SRC) $(YACC_GEN_H)
	$(LEX) -o $@ $<

src/parser.tab.h src/parser.tab.c: $(YACC_SRC)
	$(YACC) $(YFLAGS) -o $(YACC_GEN_C) $<

src/%.o: src/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(LEX_GEN) $(YACC_GEN_H) $(YACC_GEN_C) $(OBJS) $(TARGET)
	rm -rf bin

run: $(TARGET)
	./$(TARGET)