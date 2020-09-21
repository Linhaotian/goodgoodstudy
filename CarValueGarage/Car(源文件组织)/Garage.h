//
//  Garage.h
//  Car(源文件组织)
//
//  Created by LinHaotian on 2020/9/21.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Car;

NS_ASSUME_NONNULL_BEGIN

@interface Garage : NSObject {
    NSString *name;
    NSMutableArray *cars;
}

@property (readwrite, copy) NSString *name;

- (void)addCar:(Car *)car;

- (void)print;

@end

NS_ASSUME_NONNULL_END
