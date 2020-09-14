//
//  Tire.m
//  Car(源文件组织)
//
//  Created by LinHaotian on 2020/9/9.
//  Copyright © 2020 haotian. All rights reserved.
//

#import "Tire.h"

@implementation Tire

- (id)init {
    if (self == [super init]) {
        pressure = 34.0;
        treadDepth = 20.0;
    }
    return self;
}

- (id)initWithPressure:(float)p {
    if (self = [super init]) {
        pressure = p;
        treadDepth = 20.0;;
    }
    return self;
}

- (id)initWithTreadDepth:(float)td {
    if (self = [super init]) {
        pressure = 34.0;;
        treadDepth = td;
    }
    return self;
}

- (id)initWithPressure:(float)p treadDepth:(float)td {
    if (self = [super init]) {
        pressure = p;
        treadDepth = td;
    }
    return self;
}

- (void)setPressure:(float)p {
    pressure = p;
}

- (float)pressure {
    return pressure;
}

- (void)setTreadDepth:(float)td {
    treadDepth = td;
}

- (float)treadDepth {
    return treadDepth;
}

- (NSString *)description {
    NSString *desc = [NSString stringWithFormat:@"tire------pressure:%.1f treadDepth:%.1f", pressure, treadDepth];
    return desc;
}

@end
