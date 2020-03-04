#!make -f

CXX=clang++-9 
CXXFLAGS=-std=c++2a

HEADERS=Gimatriya.hpp
OBJECTS=Gimatriya.o

run: test
	./$^

test: TestRunner.o Test1.o Test2.o $(OBJECTS)
	$(CXX) $(CXXFLAGS) $^ -o test

%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) --compile $< -o $@

clean:
	rm -f *.o test
