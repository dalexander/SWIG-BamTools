all: lib python csharp

lib:
	(cd bamtools && mkdir -p build && cd build && cmake .. && make)

python: 
	cd Python && make 

clean-python:
	cd Python && make clean

csharp: 
	cd CSharp && make 

clean-csharp:
	cd CSharp && make clean

clean: clean-python clean-csharp

.PHONY: all clean clean-python clean-csharp lib csharp python 
