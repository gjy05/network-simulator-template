CC = g++
CFLAGS = -g -Wall -Werror -std=c++11
OBJECTS = impl.o

all: first second

first.o: scenarios/first.cpp
	$(CC) $(CFLAGS) -c scenarios/first.cpp

second.o: scenarios/second.cpp
	$(CC) $(CFLAGS) -c scenarios/second.cpp

impl.o: impl.cpp
	$(CC) $(CFLAGS) -c impl.cpp

first: first.o $(OBJECTS)
	$(CC) $(CFLAGS) -o first first.o $(OBJECTS)

second: second.o $(OBJECTS)
	$(CC) $(CFLAGS) -o second second.o $(OBJECTS)

clean:
	rm -f *.o *.exe first second impl