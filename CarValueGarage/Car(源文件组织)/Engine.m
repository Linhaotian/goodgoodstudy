//
//  Engine.m
//  Car(源文件组织)
//
//  Created by LinHaotian on 2020/9/9.
//  Copyright © 2020 haotian. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (id)init {
    if (self = [super init]) {
        horsepower = 145;
    }
    return self;
}

- (NSString *)description {
    return @"engine.";
}

@end
