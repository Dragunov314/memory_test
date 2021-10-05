#include <iostream>
#include <vector>
#include <chrono>
#include <thread>
#include <gperftools/heap-profiler.h>
#include <malloc.h>

using namespace std;

int main()
{
	HeapProfilerStart("mem_test.hprof");
	//malloc_stats();
	int data_size = 1e7;
	vector<vector<int>> vec1;
	for(int i=0;i<10;i++)
	{
		vec1.push_back(vector<int>(data_size));
		std::this_thread::sleep_for(std::chrono::milliseconds(1000));
	}
	//malloc_stats();
	//HeapProfilerDump("End of program");
	HeapProfilerStop();
	return 0;
}
