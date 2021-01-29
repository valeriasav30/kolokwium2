CC=g++
myProgram: main.o employee.o address.o
	$(CC) $+ -o $@
%.o: %.cpp
	$(CC) -c $<
main.o: employee.h address.h
employee.o: address.h
clean:
	rm *.o myProgram
