#include <iostream>
#include <vector>
#include <malloc.h>

using namespace std;

int main()
{
	malloc_stats();
	int data_size = 1e6;
	vector<int> vec1(data_size,0);
	malloc_stats();
	return 0;
}
