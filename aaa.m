#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    for (;;) {
        NSLog(@"a");
    }
    [pool drain];
    return 0;
}
