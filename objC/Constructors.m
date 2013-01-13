#import <Foundation/Foundation.h>

@interface aClass: NSObject {
	int a;
}
- (id) initWithA: (int) aValue;
@end

@implementation aClass

- (id) init {
	if (self = [super init]) {
		a = 1;
	}
	return self;
}

- (id) initWithA: (int) aValue {
	if (self = [self init]) {
		a = aValue;
	}
	return self;
}

- (void) dealloc {
	[super dealloc];
	a = 0;
}

@end

int main(int argc, char const *argv[])
{
	aClass *a1 = [[aClass alloc] init];
	aClass *a2 = [[aClass alloc] initWithA: 5];
	return 0;
}