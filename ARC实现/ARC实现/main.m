//
//  main.m
//  ARC实现
//
//  Created by LinHaotian on 2020/9/26.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MyObject.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        id __strong obj = [[MyObject alloc] init];
        id __weak o = obj;
        
        NSLog(@"1 %@", o);
        NSLog(@"2 %@", o);
        NSLog(@"3 %@", o);
        NSLog(@"4 %@", o);
        NSLog(@"5 %@", o);
        
        //第四次起使用__weak 修饰符的变量o，引用retainWeakReference反悔NO,无法获取对象
        
        
        
        //......
        
//        id __autoreleasing objjj = [[NSObject alloc] init];
        
        //......
//        id __autoreleasing objjjj = [NSMutableArray array];
        
        
        id __strong objjjj = [[NSObject alloc] init];
        id __autoreleasing oo = objjjj;
        
        NSLog(@"retain count %d", _objc_rootRetainCount(objjjj));
        //strong持有，且注册到autoreleasepool中,为2
        
    }
    return 0;
}
