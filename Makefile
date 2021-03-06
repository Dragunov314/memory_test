GCC_DIR := /usr

CXX := $(GCC_DIR)/bin/g++
CPPFLAGS := --std=c++11 -O3
CXXFLAGS := 
LDFLAGS := -lm -lstdc++ -ltcmalloc
EXE_NAME := memory_test

all:
	$(CXX) memory_test.cpp $(CPPFLAGS) $(CXXFLAGS) -o $(EXE_NAME) $(LDFLAGS) $(LDLIBS)

.ONESHELL:
time:
	#export LD_LIBRARY_PATH=$(GCC_DIR)/lib64\:$$LD_LIBRARY_PATH
	/usr/bin/time -f "%e %M" ./$(EXE_NAME)

clean:
	rm memory_test -rf
	rm *.hprof -rf
	rm *.heap -rf
	rm ./profile_result/* -rf
