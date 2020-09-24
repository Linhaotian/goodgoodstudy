//
//  main.m
//  自动引用计数
//
//  Created by LinHaotian on 2020/9/23.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
        
        id obj = [[NSObject alloc] init];
        
        [obj autorelease];
        
        [pool drain]; // 等同于 [obj release]
    
    }
    return 0;
}
