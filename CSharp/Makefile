include ../Defs.mk

all:
	swig -w509,516 -I$(BAMTOOLS_INCLUDE) -c++ -csharp -module BamTools -o BamTools_wrap.cxx \
	     -outdir gensrc -namespace BamTools $(SWIG_INTERFACE)
	$(CXX) -I $(BAMTOOLS_INCLUDE) -c BamTools_wrap.cxx -o BamTools_wrap.o
	$(CXX) -shared  BamTools_wrap.o $(BAMTOOLS_LIB)/libbamtools.a -lz -o libBamTools.so
	mcs -target:library gensrc/*.cs -out:BamTools.dll

clean:
	-rm -f *.o *.so  *.cxx  *.dll
	-rm -rf gensrc/*

demo:
	mcs -reference:BamTools.dll Demo.cs
