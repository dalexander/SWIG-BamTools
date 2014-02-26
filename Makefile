all: lib python csharp

lib:
	(cd bamtools && mkdir -p build && cd build && cmake .. && make)

python: 
	cd Python && make python

clean-python:
	cd Python && make clean-python

csharp: 
	cd CSharp && make csharp

clean-csharp:
	cd CSharp && make clean-csharp

clean: clean-python clean-csharp

.PHONY: all clean clean-python clean-csharp lib csharp python 
