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
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    
    Car *car = [Car new];
    
    for (int i = 0; i < 4; i++) {
        Tire *tire = [AllWeatherRadial new];
        [car setTire:tire atIndex:i];
    }
    
    Engine *engine = [Slant6 new];
    
    [car setEngine:engine];
    
    [car print];
    
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
