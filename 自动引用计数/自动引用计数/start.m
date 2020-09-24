//
//  start.m
//  自动引用计数
//
//  Created by LinHaotian on 2020/9/23.
//  Copyright © 2020 haotian. All rights reserved.
//

#import "start.h"

@implementation start

- (id)object {
    id obj = [[NSObject alloc] init]; //自己持有对象
    
    [obj autorelease]; //取得对象存在，但自己不持有对象
    
    return obj;
}



@end
