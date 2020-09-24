//
//  test.h
//  ARC
//
//  Created by LinHaotian on 2020/9/24.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface test : NSObject {
    id __strong obj_;
}

- (void)setObject: (id __strong)obj;

@end

NS_ASSUME_NONNULL_END
