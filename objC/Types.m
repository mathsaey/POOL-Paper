#import <Foundation/Foundation.h>

void arrayExample() {
	NSMutableArray *arr = [NSMutableArray arrayWithCapacity:2];
	[arr addObject:[NSDate date]];
	[arr addObject:@"Hello world!"];
}

int main(int argc, char const *argv[]) {
	arrayExample();
	return 0;
}
