//
//  CategoryThing.h
//  CategoryThing
//
//  Created by LinHaotian on 2020/9/16.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CategoryThing : NSObject {
    NSInteger thing1;
    NSInteger thing2;
    NSInteger thing3;
}

@end

@interface CategoryThing (thing1)

- (void)setThing1:(NSInteger)thing1;
- (NSInteger)thing1;

@end

@interface CategoryThing (thing2)

- (void)setThing2:(NSInteger)thing2;
- (NSInteger)thing2;

@end

@interface CategoryThing (thing3)

- (void)setThing3:(NSInteger)thing3;
- (NSInteger)thing3;

@end

NS_ASSUME_NONNULL_END
