ROOT_DIR := $(dir $(lastword $(MAKEFILE_LIST)))


CXX := g++ -fPIC -g
BAMTOOLS_INCLUDE := $(ROOT_DIR)/bamtools/include
BAMTOOLS_LIB := $(ROOT_DIR)/bamtools/lib
SWIG_INTERFACE := $(ROOT_DIR)/BamTools.i
PYTHON_INCLUDE := /System/Library/Frameworks/Python.framework/Versions/2.7/include/python2.7
