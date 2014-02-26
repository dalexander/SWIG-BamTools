include ../Defs.mk

csharp:
	swig -w509,516 -I$(BAMTOOLS_INCLUDE) -c++ -csharp -module BamTools -o BamTools_wrap.cxx $(SWIG_INTERFACE)
	$(CXX) -I $(BAMTOOLS_INCLUDE) -c BamTools_wrap.cxx -o BamTools_wrap.o
	$(CXX) -shared -undefined dynamic_lookup  BamTools_wrap.o -L $(BAMTOOLS_LIB) -l bamtools -o BamTools.so
	mcs -target:library *.cs --output BamTools.dll

clean-csharp:
	-rm -f BamTools_wrap.o
	-rm -f *.o *.so  *.cxx *.cs
