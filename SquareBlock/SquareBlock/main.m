//
//  main.m
//  SquareBlock
//
//  Created by LinHaotian on 2020/9/17.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        int(^square_block)(int number) = ^(int number) {
            return (number *number);
        };
        int result = square_block(5);
        printf("Result = %d\n", result);
        
        int value = 6;
        int (^multiply_block)(int number) = ^(int number) {
            return (value *number);
        };
        int result2 = multiply_block(7);
        printf("Result2 = %d\n", result2);
        
    }
    return 0;
}
