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
        
        Car *car = [[Car alloc] init];
        
        for (int i = 0; i < 4; i++) {
            AllWeatherRadial *tire = [[AllWeatherRadial alloc] initWithPressure:23 + i treadDepth:33 - i];
            
            [car setTire:tire atIndex:i];
            
            [tire release];
        }
        
        Engine *engine = [[Slant6 alloc] init];
        
        [car setEngine:engine];
        
        [car print];
        
        [car release];
    }
    
    
    
    return 0;
}
