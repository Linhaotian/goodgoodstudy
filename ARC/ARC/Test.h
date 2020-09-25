//
//  test.h
//  ARC
//
//  Created by LinHaotian on 2020/9/24.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Test : NSObject {
//    id __strong obj_;
    id __weak obj_; //避免循环引用
}

- (void)setObject: (id __strong)obj;

@end

NS_ASSUME_NONNULL_END
