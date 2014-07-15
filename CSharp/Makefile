include ../Defs.mk

all: libBamTools.so

libBamTools.so: $(SWIG_INTERFACE)
	swig -w509,516 -I.. -I$(BAMTOOLS_INCLUDE) -c++ -csharp -module BamTools -o BamTools_wrap.cxx \
	     -outdir gensrc -namespace PacBio.Native.BamTools $(SWIG_INTERFACE)
	$(CXX) -I .. -I $(BAMTOOLS_INCLUDE) -c BamTools_wrap.cxx -o BamTools_wrap.o
	$(CXX) -shared  BamTools_wrap.o $(BAMTOOLS_LIB)/libbamtools.a -lz -o libBamTools.so

clean:
	-rm -f *.o *.so  *.cxx  *.dll
	-rm -rf gensrc/*

demo:
	mcs -reference:BamTools.dll Demo.cs
