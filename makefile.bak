cc = clang++

main: UserInterface.o Management.o Employee.o
	$(cc) -o ./bin/main UserInterface.o Employee.o Management.o

Management.o: ./src/Management.cpp ./src/Management.hpp
	$(cc) -c ./src/Management.cpp

UserInterface.o: ./src/UserInterface.cpp
	$(cc) -c ./src/UserInterface.cpp

Employee.o: ./src/Employee.cpp ./src/Employee.hpp ./lib/LinkedListDetail.hpp ./lib/LinkedListTemplate.hpp
	$(cc) -c ./src/Employee.cpp

clean:
	rm *.o
