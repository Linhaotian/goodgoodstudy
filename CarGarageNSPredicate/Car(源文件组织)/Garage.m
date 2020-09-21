//
//  Garage.m
//  Car(源文件组织)
//
//  Created by LinHaotian on 2020/9/21.
//  Copyright © 2020 haotian. All rights reserved.
//

#import "Garage.h"

@implementation Garage

@synthesize name;

- (void)addCar:(Car *)car {
    if (cars == nil) { //懒初始化
        cars = [[NSMutableArray alloc] init];
    }
    [cars addObject:car];
}

- (void)dealloc { //清除
    [name release];
    [cars release];
    
    [super dealloc];
}

- (void)print {
    NSLog(@"%@", name);
    
    for (Car *car in cars) {
        NSLog(@" %@", car);
    }
}

@end
