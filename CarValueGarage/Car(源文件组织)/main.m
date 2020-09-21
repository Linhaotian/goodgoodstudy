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

#import "Garage.h"

Car *makeCar(NSString *name, NSString *make, NSString *model, int modelYear, int numberOfDoors, float mileage, int horsepower){
    Car *car = [[[Car alloc] init] autorelease];
    car.name = name;
    car.make = make;
    car.model = model;
    car.modelYear = modelYear;
    car.numberOfDoors = numberOfDoors;
    car.mileage = mileage;
    
    Slant6 *engine = [[[Slant6 alloc] init] autorelease];
    [engine setValue:[NSNumber numberWithInt:horsepower] forKey:@"horsepower"];
    car.engine = engine;
    
    for (int i = 0; i < 4; i++) {
        Tire *tire = [[[Tire alloc] init] autorelease];
        [car setTire:tire atIndex:i];
    }
    
    return car;
}


int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        
//        appDelegateClassName = NSStringFromClass([AppDelegate class]);
//
//        Car *car = [[[Car alloc] init] autorelease]; //同一位置执行完成所有的内存管理
//        car.name = @"Herbie";
//        car.make = @"Honda";
//        car.model = @"CRX";
//        car.numberOfDoors = 2;
//        car.modelYear = 1984;
//        car.mileage = 110000;
//
//        for (int i = 0; i < 4; i++) {
//            AllWeatherRadial *tire = [[AllWeatherRadial alloc] init];
//
//            [car setTire:tire atIndex:i];
//
//            [tire release];
//        }
//
//        Slant6 *engine = [[[Slant6 alloc] init] autorelease];
//
//        car.engine = engine;
//
//        NSLog(@"Car is %@", car);
        
        //创建一些car对象保存在garage对象中
        
        Garage *garage = [[Garage alloc] init];
        garage.name = @"joe garage";
        
        Car *car;
        car = makeCar(@"aaa", @"sss", @"CRX", 1984, 2, 110000, 58);
        [garage addCar:car];
        
        car = makeCar(@"zzz", @"xxx", @"CRX", 1985, 2, 210000, 68);
        [garage addCar:car];
        
        car = makeCar(@"qqq", @"www", @"CRX", 1986, 2, 310000, 78);
        [garage addCar:car];
        
        car = makeCar(@"eee", @"rrr", @"CRX", 1987, 2, 410000, 88);
        [garage addCar:car];
        
        car = makeCar(@"ttt", @"yyy", @"CRX", 1988, 2, 510000, 98);
        [garage addCar:car];
        
        car = makeCar(@"uuu", @"iii", @"CRX", 1989, 2, 710000, 99);
        [garage addCar:car];
        
        car = makeCar(@"ooo", @"bbb", @"CRX", 1990, 2, 810000, 97);
        [garage addCar:car];
        
        [garage print];
        
        [garage release];
    }
    
    
    
    return 0;
}
