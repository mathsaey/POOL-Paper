#include <iostream>

using namespace std;

class A {
public:
	A():a(1),b(2),c(3) {}

	int a;
protected:
	int b;
private:
	int c;
};

class B : public A {
	//void testFunc(){c = 5;}
	//Inheritance.cpp:14: error: ‘int A::c’ is private
};

class D : protected A {};
class C : private A {};

int main(int argc, char const *argv[])
{
	B b;
	b.a;

	D d;
	//d.a;
	//Inheritance.cpp:9: error: ‘int A::a’ is inaccessible

	return 0;
}