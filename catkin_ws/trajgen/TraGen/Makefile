#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
#
CC = g++
CFLAGS  = -g -Wall

LIBS = -LqpOASES/bin \
	-Lyaml-cpp-0.5.1/build \
	-lqpOASES \
	-lyaml-cpp

INC = -IEigenAll \
	  -IqpOASES/include \
	  -Iyaml-cpp-0.5.1/include

TARGET = prog

all: TARGET 

TARGET: prog.o
	$(CC) $(CFLAGS) -o $(TARGET) prog.o $(LIBS)

prog.o:  prog.cpp prog.h 
	$(CC) $(CFLAGS) -c $(INC) -o prog.o prog.cpp

#test:  test1.o test2.o prog.o
#	$(CC) $(CFLAGS) -o test test1.o test2.o

#test1.o:  test1.cpp 
#	$(CC) $(CFLAGS) -c test1.cpp

#test2.o:  test2.cpp 
#	$(CC) $(CFLAGS) -c test2.cpp


clean: 
	$(RM) count *.o *~
