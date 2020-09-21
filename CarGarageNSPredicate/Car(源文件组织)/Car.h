//
//  Car.h
//  Car(源文件组织)
//
//  Created by LinHaotian on 2020/9/9.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Tire;

@class Engine;

@interface Car : NSObject <NSCopying> {
    NSString *name;
    NSMutableArray *tires;
    Engine *engine;
    NSString *make;
    NSString *model;
    int modelYear;
    int numberOfDoors;
    float mileage;
}

@property (readwrite, copy) NSString *name;
@property (readwrite, retain) Engine *engine;
@property (readwrite, copy) NSString *make;
@property (readwrite, copy) NSString *model;
@property (readwrite) int modelYear;
@property (readwrite) int numberOfDoors;
@property (readwrite) float mileage;

- (void)setEngine:(Engine *)newEngine;

- (Engine *)engine;

- (void)setTire :(Tire *)tire atIndex: (int)index;

- (Tire *)tireAtIndex: (int)index;

- (void)print;

@end

NS_ASSUME_NONNULL_END
