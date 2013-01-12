#include <iostream>
using namespace std;

namespace A {
	void doSomething() {printf("Nothing \n");}
}
namespace B {
	void doSomething() {printf("Something \n");}
}

int main(int argc, char const *argv[]) {
	A::doSomething();
	B::doSomething();
	return 0;
}
