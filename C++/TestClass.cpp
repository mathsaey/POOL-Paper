#include <iostream>

using namespace std;

class TestClass {
public:
	TestClass() {}
	~TestClass() {}

	void doSomething();
};

void TestClass::doSomething() {
	cout << "Something \n";
}

int main(int argc, char const *argv[]) {
	TestClass t;
	t.doSomething();
	return 0;
}
