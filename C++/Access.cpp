#include <iostream>

using namespace std;

class A {
public:
	A() {
		a = 1;
		b = 2;
		c = 3;
	}

	void aVisibleMethod() {
		cout << "You can see me! \n";
	}

private:
	void anInvisibleMethod() {
		cout << "You can't see me! \n";
	}

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
	//void getC() {printf("%d",c);}
	//Access.cpp: In member function ‘void B::getC()’:
	//Access.cpp:27: error: ‘int A::c’ is private
};

int main() {
	A t;

	t.a = 1;
	//t.b = 2; 
	//Access.cpp:25: error: ‘int A::b’ is protected
	//t.c = 3;
	//Access.cpp:27: error: ‘int A::c’ is private
	
	t.aVisibleMethod();
	//t.anInvisibleMethod();
	//Access.cpp:18: error: ‘void A::anInvisibleMethod()’ is private

	return 0;
}