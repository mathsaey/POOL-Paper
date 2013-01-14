#import <Foundation/Foundation.h>

@protocol Protocol
@required
- (void) doSomething;
@optional
- (void) doNothing;
@end

@interface Delegate : NSObject <Protocol> {}
@end

@implementation Delegate
- (void) doSomething {printf("Hello world! \n");}
@end

int main(int argc, char const *argv[]) {
	id<Protocol> d = [Delegate alloc];

	[d doSomething];
	//[d doNothing];
	return 0;
}