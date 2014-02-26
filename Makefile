all: python

lib:
	(cd bamtools && mkdir -p build && cd build && cmake .. && make)

python: 
	cd Python && make python

clean-python:
	cd Python && make clean-python

clean: clean-python

.PHONY: all clean clean-python clean-csharp lib csharp python 
