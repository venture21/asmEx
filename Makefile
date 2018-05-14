# Makefile
OBJECTS = branch01.o
TARGET = branch01

SRCS = $(OBJECTS:.o=.s)

$(TARGET): $(OBJECTS)
	gcc -o $@ $+
	
$(OBJECTS): $(SRCS)
	as -o $@ $<
	
clean:
	rm -vf $(TARGET) *.o
