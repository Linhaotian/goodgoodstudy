//
//  CategoryThing.m
//  CategoryThing
//
//  Created by LinHaotian on 2020/9/16.
//  Copyright © 2020 haotian. All rights reserved.
//

#import "CategoryThing.h"

@implementation CategoryThing

- (NSString *) description {
    NSString *desc = [NSString stringWithFormat:@"%ld %ld %ld", thing1, thing2, thing3];
    return desc;
}

@end

@implementation CategoryThing (thing1)

- (void)setThing1:(NSInteger)t1 {
    thing1 = t1;
}

- (NSInteger)thing1 {
    return thing1;
}

@end

@implementation CategoryThing (thing2)

- (void)setThing2:(NSInteger)t2 {
    thing2 = t2;
}

- (NSInteger)thing2 {
    return thing2;
}

@end

@implementation CategoryThing (thing3)

- (void)setThing3:(NSInteger)t3 {
    thing3 = t3;
}

- (NSInteger)thing3 {
    return thing3;
}

@end
