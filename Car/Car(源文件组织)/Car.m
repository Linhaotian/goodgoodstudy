//
//  Car.m
//  Car(源文件组织)
//
//  Created by LinHaotian on 2020/9/9.
//  Copyright © 2020 haotian. All rights reserved.
//

#import "Car.h"

#import "Tire.h"

#import "Engine.h"

@interface Car ()

@end

@implementation Car 

- (id)init {
    if (self = [super init]) {
        
        tires = [[NSMutableArray alloc] init];
        
        for (int i = 0;  i < 4; i++) {
            [tires addObject:[NSNull null]];
        }
    }
    return (self);
}

- (void)setEngine:(Engine *)newEngine { //保留以前对象 释放当前对象
    [newEngine retain];
    [engine release];
    engine = newEngine;
}

- (Engine *)engine {
    return engine;
}

- (void)setTire:(Tire *)tire atIndex:(int)index {
    [tires replaceObjectAtIndex:index withObject:tire];
}

- (Tire *)tireAtIndex:(int)index {
    Tire *tire = [tires objectAtIndex:index];
    
    return tire;
}

- (void)print {
    
    for (int i = 0 ; i < 4; i ++) {
        NSLog(@"%@", [self tireAtIndex:i]);
    }
    NSLog(@"%@", engine);
}

- (void) dealloc {
    [tires release];
    [engine release];
    
    [super dealloc];
}

@end
