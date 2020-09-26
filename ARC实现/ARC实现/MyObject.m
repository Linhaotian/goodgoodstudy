//
//  MyObject.m
//  ARC实现
//
//  Created by LinHaotian on 2020/9/26.
//  Copyright © 2020 haotian. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject

- (id)init {
    self = [super init];
    return self;
}

- (BOOL)retainWeakReference {
    
    if ( ++ count > 3) {
        return NO;
    }
    
    return [super retainWeakReference];
}

@end
