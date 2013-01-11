#import <Foundation/Foundation.h>

@protocol Protocol
@required
- (void) doSomething;
@optional
- (void) doNothing;
@end

@interface ImplementingClass : NSObject <Protocol> {}
- (void) doSomething;
@end

@implementation ImplementingClass
- (void) doSomething {
	printf("Hello world! \n");
}
@end

int main(int argc, char const *argv[]) {
	ImplementingClass *c = [ImplementingClass alloc];

	[c doSomething];
	//[c doNothing];
	return 0;
}