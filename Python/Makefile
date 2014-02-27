include ../Defs.mk

all:
	swig -w509 -I$(BAMTOOLS_INCLUDE) -c++ -python -module BamTools -o BamTools_wrap.cxx $(SWIG_INTERFACE)
	$(CXX) -I $(PYTHON_INCLUDE) -I $(BAMTOOLS_INCLUDE) -c BamTools_wrap.cxx -o BamTools_wrap.o
	$(CXX) -shared -undefined dynamic_lookup  BamTools_wrap.o -L $(BAMTOOLS_LIB) -l bamtools -o _BamTools.so

clean:
	-rm -f *.o *.so  *.cxx *.pyc BamTools.py
