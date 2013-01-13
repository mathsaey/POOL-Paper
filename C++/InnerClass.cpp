#include <iostream>

using namespace std;

class A {
public:
	void doSomething() {
		B b;
		b.innerMethod();
	}

private:
	class B {
	public:
		void innerMethod() {cout << "Hello world!\n";}
	};
};

int main(int argc, char const *argv[])
{
	A a;
	a.doSomething();
	return 0;
}