#include <iostream>

using namespace std;

extern "C"
{
	void function(void)
	{
		cout << "Hello world!" << endl;
	}
}