//
//  NSString+NumberConvenience.m
//  LenthAtNSNumber
//
//  Created by LinHaotian on 2020/9/15.
//  Copyright © 2020 haotian. All rights reserved.
//

#import "NSString+NumberConvenience.h"

@implementation NSString (NumberConvenience)

- (NSNumber *)lengthAsNumber {
    NSUInteger length  = [self length];
    return ([NSNumber numberWithUnsignedInt:length]);
}

@end
