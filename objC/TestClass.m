#import <Foundation/Foundation.h>

@interface TestClass : NSObject {}

- (void) doSomething;

@end

@implementation TestClass

- (void) doSomething {
	printf("Something \n");
}

@end


int main(int argc, char const *argv[]) {
	TestClass *class = [TestClass alloc];
	[class doSomething];
	return 0;
}
