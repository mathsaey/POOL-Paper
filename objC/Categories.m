#import <Foundation/Foundation.h>

@interface A : NSObject
- (void) doSomething;
@end

@implementation A
- (void) doSomething {printf("Nothing \n");}
@end

@interface A (doSomething)
- (void) doSomething;
@end

@implementation A (doSomething)
- (void) doSomething {printf("Something \n");}
@end

int main(int argc, char const *argv[]) {
	A *obj = [[A alloc] init];
	[obj doSomething];
	return 0;
}
