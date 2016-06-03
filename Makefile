SRCS:=$(wildcard *.c)
OBJS:=$(patsubst %.c,%.o,$(SRCS))

CFLAGS:=-O2 -MMD
LDFLAGS:=-O2 -ldl

all:mnfree

mnfree:	$(OBJS)
	gcc -lstdc++ -o $@ $(LDFLAGS) $(OBJS)

.PHONY:clean
clean:
	-rm mnfree *.o *.d
-include *.d
