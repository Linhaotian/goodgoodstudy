//
//  main.m
//  Blocks模式
//
//  Created by LinHaotian on 2020/9/27.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    }
    
//    int dmy = 256;
//    int val = 10;
//    const char *fmt = @"klklklklkl";
//
//    void (^blk) (void) = ^ {
//        printf(fmt, val);
//    };
//
//    val = 2;
//    fmt = @"huhuhuu";
//
//    blk();
    
    //......
    
    __block int val = 0;
    
    void (^blk) (void) = ^ {
        val = 1;
    };
    
    blk();
    
    NSLog(@"val = %d", val);
    
    return 0;
}
