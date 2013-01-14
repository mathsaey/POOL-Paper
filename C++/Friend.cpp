#include <iostream>

class A {
	friend class B;
public:
	A():a(1),b(2) {};

private:
	int a;
	int b;
};
class B {
public:
	B(A a):_a(a.a), _b(a.b) {}
	int _a;
	int _b;
};

int main(int argc, char const *argv[])
{
	A a;
	B b = B(a);
	b._a;
	b._b;
	return 0;
}