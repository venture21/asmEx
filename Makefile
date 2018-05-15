# Makefile
OBJECTS = printf01.o
TARGET = printf01

SRCS = $(OBJECTS:.o=.s)

$(TARGET): $(OBJECTS)
	gcc -o $@ $+
	
$(OBJECTS): $(SRCS)
	as -o $@ $<
	
clean:
	rm -vf $(TARGET) *.o
