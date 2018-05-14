# Makefile
OBJECTS = load01.o
TARGET = load01

SRCS = $(OBJECTS:.o=.s)

$(TARGET): $(OBJECTS)
	gcc -o $@ $+
	
$(OBJECTS): $(SRCS)
	as -o $@ $<
	
clean:
	rm -vf $(TARGET) *.o
