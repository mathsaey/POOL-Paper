#include <iostream>

using namespace std;

class AbstractClass {
public:
	virtual void doSomething()=0;
	//virtual void doNothing()=0;
};

class DerivedClass : private AbstractClass {
public:
	virtual void doSomething() {
		cout << "Hello world! \n";
	}
};

class StandAloneClass {
public:
	virtual void doSomething() {
		cout << "Hello world! \n";
	}
};

int main(int argc, char const *argv[]) {	
	//AbstractClass a;
	DerivedClass a;
	//StandAloneClass a;
	a.doSomething();
	return 0;
}