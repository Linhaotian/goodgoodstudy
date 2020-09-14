//
//  AllWeatherRadial.h
//  Car(源文件组织)
//
//  Created by LinHaotian on 2020/9/9.
//  Copyright © 2020 haotian. All rights reserved.
//

#import "Tire.h"

NS_ASSUME_NONNULL_BEGIN

@interface AllWeatherRadial : Tire {
    float rainHandling; //轮胎潮湿路面性能能
    float snowHandling; //积雪
}

- (void)setRainHandling:(float)rainHandling;
- (float)rainHandling;

- (void)setSnowHandling:(float)snowHandling;
- (float)snowHandling;

@end

NS_ASSUME_NONNULL_END
