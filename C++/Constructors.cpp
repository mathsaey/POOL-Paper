class aClass {
public:
	aClass(): _a(1) {}
	aClass(int a): _a(a) {}
	~aClass() {_a = 0;}
private:
	int _a;
};

int main(int argc, char const *argv[]) {
	aClass a1; //calls the default constructor
	aClass a2(3);
	return 0;
}