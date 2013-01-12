#include <iostream>

using namespace std;

template <typename T>
class A {
public:
	A(T obj): _obj(obj) {}

	void messageForT() {_obj.messageForT();}

private:
	T _obj;
};

class B {
public:
	void messageForT() { cout << "Something\n";}
};

int main(int argc, char const *argv[])
{
	B b;
	A<B> a = A<B>(b);
	a.messageForT();
	return 0;
}