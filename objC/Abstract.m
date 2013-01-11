#import <Foundation/Foundation.h>

/////////////////////
// Abstract Class //
///////////////////

@interface AbstractClass : NSObject {}
- (void) doSomething;
@end

@implementation AbstractClass
- (void) doSomething {
	[self doesNotRecognizeSelector:_cmd];
}
@end

////////////////////
// Derived Class //
//////////////////

@interface DerivedClass : AbstractClass {}
- (void) doSomething;
@end

@implementation DerivedClass
- (void) doSomething {
	printf("Hello world! \n");
}
@end

///////////////////////
// StandAlone Class //
/////////////////////

@interface StandAloneClass : NSObject {}
- (void) doSomething;
@end

@implementation StandAloneClass
- (void) doSomething {
	printf("Hello world! \n");
}
@end

int main(int argc, char const *argv[]) {
	AbstractClass *abstract = [AbstractClass alloc];
	DerivedClass *derived = [DerivedClass alloc];

	[derived doSomething];
	[abstract doSomething];

	return 0;
}