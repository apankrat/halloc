CFLAGS = -I. -ansi -Wall

LIBNAME = libhalloc.a
OBJS    = src/halloc.o

$(LIBNAME): $(OBJS)
	ar rcs $(LIBNAME) $(OBJS)

install: $(LIBNAME)
	cp halloc.h /usr/local/include
	cp $(LIBNAME) /usr/local/lib

clean:
	rm -f $(LIBNAME) $(OBJS)
