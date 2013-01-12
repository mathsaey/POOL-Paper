#include <iostream>
#include <string>

using namespace std;

void doSomethingWithA(int a) {
	printf("%d\n", a);
}

void doSomethingWithA(const char* a) {
	printf("%s\n", a);
}

int main() {
	doSomethingWithA(1);
	doSomethingWithA("Haha");
	return 0;
}