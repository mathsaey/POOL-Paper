#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface A : NSObject {}

@end

@implementation A
- (void) doSomething {printf("Hello world!\n");}
@end


void newMethod(id _self,SEL _cmd) {
	printf("It's really nice to add new methods at runtime! \n");
}

void somethingReplacer(id _self, SEL _cmd) {
	printf("I'm doing something else! \n");
}

int main(int argc, char const *argv[]) {
	A *a = [[A alloc] init];
	[a doSomething];

	// Adding a method
	class_addMethod([A class], @selector(addedMethod), (IMP) newMethod, "v@:");
	[a addedMethod];

	//Replacing a method
	Method methodToModify = class_getInstanceMethod([A class], @selector(doSomething));
	method_setImplementation(methodToModify, (IMP) somethingReplacer);
	[a doSomething];

	return 0;
}