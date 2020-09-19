//
//  main.m
//  Car(源文件组织)
//
//  Created by LinHaotian on 2020/9/9.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

#import "Tire.h"

#import "Engine.h"

#import "AllWeatherRadial.h"

#import "Slant6.h"

#import "Car.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        
        Car *car = [[[Car alloc] init] autorelease]; //同一位置执行完成所有的内存管理
        car.name = @"Herbie";
        car.make = @"Honda";
        car.model = @"CRX";
        car.numberOfDoors = 2;
        car.modelYear = 1984;
        car.mileage = 110000;
        
        for (int i = 0; i < 4; i++) {
            AllWeatherRadial *tire = [[AllWeatherRadial alloc] init];
            
            [car setTire:tire atIndex:i];
            
            [tire release];
        }
        
        Slant6 *engine = [[[Slant6 alloc] init] autorelease];
        
        car.engine = engine;
        
        NSLog(@"Car is %@", car);
    }
    
    
    
    return 0;
}
