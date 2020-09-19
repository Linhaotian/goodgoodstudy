//
//  AllWeatherRadial.m
//  Car(源文件组织)
//
//  Created by LinHaotian on 2020/9/9.
//  Copyright © 2020 haotian. All rights reserved.
//

#import "AllWeatherRadial.h"

@implementation AllWeatherRadial

- (NSString *)description {
    NSString *desc = [[NSString alloc] initWithFormat:@"AllWeatherRadial: %.1f / %.1f / %.1f / %.1f.", self.pressure, self.treadDepth, self.rainHandling, self.snowHandling];
    return desc;
}

- (void)setRainHandling:(float)rh {
    rainHandling = rh;
}

- (float)rainHandling {
    return rainHandling;
}

- (void)setSnowHandling:(float)sh {
    snowHandling = sh;
}

- (float)snowHandling {
    return snowHandling;
}

- (id)initWithPressure:(float)p treadDepth:(float)td {
    if (self = [super initWithPressure:p treadDepth:td]) {
        rainHandling = 23.7;
        snowHandling = 42.5;
    }
    return self;
}

@end
