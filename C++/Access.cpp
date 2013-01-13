#include <iostream>
using namespace std;

class A {
public:
	A() {
		a = 1;
		b = 2;
		c = 3;
	}	
	void aVisibleMethod() {cout << "You can see me! \n";}
	int getC(A obj) {return obj.c;}
private:
	void anInvisibleMethod() {cout << "You can't see me! \n";}
public:
	int a;
protected:
	int b;
private:
	int c;
};

class B : protected A {
	void getA() {printf("%d",a);}
	void getB() {printf("%d",b);}
	//void getC() {printf("%d",c);} => Access.cpp:27: error: ‘int A::c’ is private
};

int main() {
	A t1, t2;
	t1.a = 1;
	//t1.b = 2; => Access.cpp:25: error: ‘int A::b’ is protected
	//t1.c = 3;	=> Access.cpp:27: error: ‘int A::c’ is private
	t1.getC(t2);

	t1.aVisibleMethod();
	//t1.anInvisibleMethod(); => Access.cpp:18: error: ‘void A::anInvisibleMethod()’ is private
	return 0;
}