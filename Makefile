#CXX := clang++ -g -stdlib=libstdc++  -Qunused-arguments -fcolor-diagnostics
CXX := g++ -g
PYTHON_INCLUDE := /System/Library/Frameworks/Python.framework/Versions/2.7/include/python2.7
BAMTOOLS_INCLUDE := bamtools/include
BAMTOOLS_LIB := bamtools/lib

all:
	swig -I$(BAMTOOLS_INCLUDE) -c++ -python -module BamTools BamTools.i
	$(CXX) -I $(PYTHON_INCLUDE) -I $(BAMTOOLS_INCLUDE) -c BamTools_wrap.cxx -o BamTools_wrap.o
	$(CXX) -shared -undefined dynamic_lookup  BamTools_wrap.o -L $(BAMTOOLS_LIB) -l bamtools -o _BamTools.so

lib:
	(cd bamtools && mkdir -p build && cd build && cmake .. && make)

clean:
	-rm -f *.o *.so *.py *.cxx

.PHONY: all clean lib
