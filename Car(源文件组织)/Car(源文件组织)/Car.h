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

@interface Car : NSObject

- (void)setEngine:(Engine *)newEngine;

- (Engine *)engine;

- (void)setTire :(Tire *)tire atIndex: (int)index;

- (Tire *)tireAtIndex: (int)index;

- (void)print;

@end

NS_ASSUME_NONNULL_END
