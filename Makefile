CC	= gcc
CFLAGS	= -O2 -Wall $(shell sdl-config --cflags)
EXE	= lopan
OBJS	= $(EXE).o gfx.o font.o

$(EXE):	$(OBJS)
	gcc -o $(EXE) $(OBJS) $(shell sdl-config --libs)

$(EXE).o: $(EXE).c gfx.h font.h

gfx.o:	gfx.c gfx.h

font.o:	font.c font.h

clean:
	rm -f *.o $(EXE)

test: $(EXE)
	./lopan
