#!/bin/bash

export HEAPPROFILE=./profile_result/test.hprof
#export HEAP_PROFILE_TIME_INTERVAL=1
./memory_test
google-pprof --text ./memory_test ./profile_result/test.hprof.0001.heap
