//
//  main.m
//  RetainCount
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
        NSLog(@"retain count of %lu", [self retainCount]); //retainCount在ARC不让用 Build Settings改了允许
    }
    
    return (self);
}

- (void)dealloc {
    NSLog(@"dealloc......");
    [super dealloc];
}

@end

int main(int argc, const char * argv[]) {
    
    RetainTracker *tracker = [RetainTracker new];
    
    [tracker retain];
    NSLog(@"%lu",[tracker retainCount]);
    
    [tracker retain];
    NSLog(@"%lu",[tracker retainCount]);
    
    [tracker release];
    NSLog(@"%lu",[tracker retainCount]);
    
    [tracker release];
    NSLog(@"%lu",[tracker retainCount]);
    
    [tracker retain];
    NSLog(@"%lu",[tracker retainCount]);
    
    [tracker release];
    NSLog(@"%lu",[tracker retainCount]);
    
    [tracker release];
    NSLog(@"%lu",[tracker retainCount]);
    
    return 0;
}
