//
//  Tire.h
//  Car(源文件组织)
//
//  Created by LinHaotian on 2020/9/9.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tire : NSObject {
    float pressure;
    float treadDepth;
}

- (id)initWithPressure:(float)pressure;

- (id)initWithTreadDepth:(float)treadDepth;

- (id)initWithPressure:(float)pressure treadDepth:(float)treadDepth;

- (void)setPressure: (float)pressure;
- (float)pressure;

- (void)setTreadDepth: (float)treadDepth;
- (float)treadDepth;

@end

NS_ASSUME_NONNULL_END
