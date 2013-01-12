#include <iostream>
#include <string>
using namespace std;

class NoiseMaker {
public:
	virtual string makeNoise() =0;
};

class Sheep : public NoiseMaker {
public:
	string makeNoise() {return "Beeeeiii\n";}
};

class Car : public NoiseMaker {
public:
	string makeNoise() {return "Vrooom\n";}
};

void print(NoiseMaker* m) {
	string s = m->makeNoise();
	printf(s.c_str());
}

int main(int argc, char const *argv[]) {
	Car* c = new Car();
	Sheep* s = new Sheep();

	print(c);
	print(s);

	return 0;
}