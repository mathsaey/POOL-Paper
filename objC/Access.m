#import <Foundation/Foundation.h>

@interface A : NSObject {
@public
	int a;
@protected
	int b;
@private
	int c;
}
- (id) init;
- (void) show;
- (void) aVisibileMethod;
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

- (void) show {
	printf("%d,", a);
	printf("%d,", b);
	printf("%d\n",c);
}

- (void) aVisibileMethod {printf("You can see me!\n");}
- (void) anInvisibleMethod {printf("You can't see me!\n");}

@end

@interface B: A {}
- (void) getA;
- (void) getB;
//- (void) getC;
@end

@implementation B
- (void) getA {printf("%d", a);}
- (void) getB {printf("%d", b);}
//- (void) getC {printf("%d", c);} 
//Access.m: In function ‘-[B getC]’: 
//Access.m:33: error: instance variable ‘c’ is declared private
@end

int main() {
	A *t = [[A alloc] init];

	t->a = 9;
	t->b = 8;
	t->c = 10; 
	//Access.m:45: warning: instance variable ‘b’ is @protected; this will be a hard error in the future

	id iVar;
	object_getInstanceVariable(t, "c", &iVar);
	printf("c is: %d\n", iVar);

	[t show];
	[t aVisibileMethod];
	[t anInvisibleMethod];

	return 0;
}