#import <Foundation/Foundation.h>

@protocol noiseProtocol
- (NSString*) makeNoise;
@end

@interface Sheep : NSObject <noiseProtocol>
@end

@implementation Sheep
- (NSString*) makeNoise {return @"Beeeeiii\n";}
@end

@interface Car : NSObject <noiseProtocol>
@end

@implementation Car
- (NSString*) makeNoise {return @"Vrooom\n";}
@end

print(id<noiseProtocol> noiseMaker) {
	printf([[noiseMaker makeNoise] UTF8String]);
}

int main(int argc, char const *argv[]) {
	print([Sheep alloc]);
	print([Car alloc]);
	return 0;
}