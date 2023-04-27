cc = clang++

main: UserInterface.o
	$(cc) -o ./bin/main UserInterface.o

UserInterface.o: ./src/UserInterface.cpp
	$(cc) -c ./src/UserInterface.cpp

Employee.o: ./src/Employee.cpp
	$(cc) -c ./src/Employee.cpp

clean:
	rm *.o
