//
//  main.m
//  RetainCount自动释放池
//
//  Created by LinHaotian on 2020/9/11.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RetainTracker : NSObject

@end

@implementation RetainTracker

- (id) init {
    if (self = [super init]) {
        NSLog(@"retain count of %lu", [self retainCount]);
    }
    
    return (self);
}

- (void)dealloc {
    NSLog(@"____________dealloc");
    [super dealloc];
}

@end

int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    RetainTracker *tracker = [RetainTracker new];
    
    [tracker retain];
    
    [tracker autorelease];
    
    [tracker release];
    
    NSLog(@"releasing pool");
    
    [pool release];
    
    @autoreleasepool {
        RetainTracker *tracker2 = [RetainTracker new];
        
        [tracker2 retain];
        
        [tracker2 autorelease];
        
        [tracker2 release];
        
        NSLog(@"auto releasing pool");
    }
    
    return 0;
}
