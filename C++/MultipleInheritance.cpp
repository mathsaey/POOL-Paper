#include <iostream>

using namespace std;

class Animal {
public: virtual void talk() =0;
};

class Horse: public Animal {
public: void talk() {cout << "Hello I'm a horse\n";}
};

class Donkey: public Animal {
public: void talk() {cout << "Hello I'm a donkey\n";}
};

class Mule: public Horse, public Donkey {};

int main(int argc, char const *argv[])
{
	Mule m;
	//m.talk();
	//m.Animal::talk();
	m.Horse::talk();
	m.Donkey::talk();
	return 0;
}

/*
MultipleInheritance.cpp:26: error: request for member ‘talk’ is ambiguous
MultipleInheritance.cpp:6: error: candidates are: virtual void Animal::talk()
MultipleInheritance.cpp:16: error:                 virtual void Donkey::talk()
MultipleInheritance.cpp:11: error:                 virtual void Horse::talk()
*/

/*
MultipleInheritance.cpp:23: error: ‘Animal’ is an ambiguous base of ‘Mule’
make: *** [bin/MultipleInheritance] Error 1
*/