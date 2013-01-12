#import <Foundation/Foundation.h>

@interface aClass: NSObject {}

- (void) doSomethingWithA: (int) a;
//- (void) doSomethingWithA: (NSString*) a;

@end

@implementation aClass
- (void) doSomethingWithA: (int) a {
	printf("%d\n", a);
}
// - (void) doSomethingWithA: (NSString*) a {
// 	printf("%s\n", [a UTF8String]);
// }

@end

// MethodOverloading.m:6: error: duplicate declaration of method ‘-doSomethingWithA:’

// void doSomethingWithA(int a) {
// 	printf("%d\n", a);
// }

// void doSomethingWithA(NSString a) {
// 	printf("%s\n", [a UTF8String]);
// }
//MethodOverloading.m:26: error: conflicting types for ‘doSomethingWithA’

int main() {
	return 0;
}