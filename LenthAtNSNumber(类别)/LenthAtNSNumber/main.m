//
//  main.m
//  LenthAtNSNumber
//
//  Created by LinHaotian on 2020/9/15.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSString+NumberConvenience.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        [dict setObject:[@"hello" lengthAsNumber] forKey:@"hello"];
        [dict setObject:[@"1234567890" lengthAsNumber] forKey:@"1234567890"];
        [dict setObject:[@"once upon a time" lengthAsNumber] forKey:@"once upon a time"];
        
        NSLog(@"%@", dict);
    }
    return 0;
}
