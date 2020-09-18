//
//  Thingie.h
//  SimpleEncoding
//
//  Created by LinHaotian on 2020/9/18.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Thingie : NSObject <NSCoding> {
    NSString *name;
    int magicNumber;
    float shoeSize;
    NSMutableArray *subThingies;
}

@property (copy) NSString *name;

@property int magicNumber;

@property float shoeSize;

@property (retain) NSMutableArray *subThingies;

- (id)initWithName:(NSString *)n magicNumber:(int)mn shoeSize:(float)ss;

@end

NS_ASSUME_NONNULL_END
