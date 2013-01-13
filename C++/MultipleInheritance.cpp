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