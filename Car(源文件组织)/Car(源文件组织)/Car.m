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

@implementation Car {
    Engine *engine;
    Tire *tires[4];
}

- (void)setEngine:(Engine *)newEngine {
    engine = newEngine;
}

- (Engine *)engine {
    return (engine);
}

- (void)setTire:(Tire *)tire atIndex:(int)index {
    if (index  <0 || index > 3){
        NSLog(@"bad index (%d) in setTire:atIndex:", index);
        exit(1);
    }
    tires[index] = tire;
}

- (Tire *)tireAtIndex:(int)index {
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in setTire:atIndex:", index);
        exit(1);
    }
    return tires[index];
}

//- (id)init {
//    if (self = [super init]) {
//        engine = [Engine new];
//        tires[0] = [Tire new];
//        tires[1] = [Tire new];
//        tires[2] = [Tire new];
//        tires[3] = [Tire new];
//    }
//    return (self);
//}

- (void)print {
    
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
    
    NSLog(@"%@", engine);
}

@end
