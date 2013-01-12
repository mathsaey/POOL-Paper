#import <Foundation/Foundation.h>

@interface A: NSObject {
@public
	int a;
@protected
	int b;
@private
	int c;
}
@end

@implementation A
- (id) init {
	if (self = [super init]) {
		a = 1;
		b = 2;
		c = 3;
	}
	return self;
}
@end

@interface B: A {}
- (void) checkLevels;
@end

@implementation B
- (void) checkLevels {
	NSLog(@"%d,%d",a,b);
	//Inheritance.m:30: error: instance variable ‘c’ is declared private
}
@end

int main(int argc, char const *argv[]) {
	B *b = [[B alloc] init];
	[b checkLevels];
	b->a = 3;
	b->b = 2;
	return 0;
}

// Variabelen houden access level van superklasse over