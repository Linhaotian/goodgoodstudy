//
//  main.m
//  Blocks的实现
//
//  Created by LinHaotian on 2020/9/30.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

int global_val = 1;
static int static_global_val = 2;

int main(int argc, const char * argv[]) {
    
    static int static_val = 3;
    
    void (^blk)(void) = ^ {
        global_val *= 1;
        static_global_val  *= 2;
        static_val *= 3;
    };
    
    return 0;
}
