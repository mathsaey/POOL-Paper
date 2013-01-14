#import <Foundation/Foundation.h>

@interface B: NSObject {}
- (void) messageForB;
@end

@implementation B
- (void) messageForB {printf("Something \n");}
@end


@interface A : NSObject {
	B *b;
}
@end

@implementation A

- (id) init {
	if (self = [super init]) {
		b = [[B alloc] init];
	}
	return self;
}

- (void)forwardInvocation:(NSInvocation *) anInvocation {
    if ([b respondsToSelector: [anInvocation selector]])
        [anInvocation invokeWithTarget:b];
    else [super forwardInvocation:anInvocation];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    return [B instanceMethodSignatureForSelector:aSelector];
}

@end


int main(int argc, char const *argv[]) {
	A *a = [[A alloc] init];
	[a messageForB];
	return 0;
}