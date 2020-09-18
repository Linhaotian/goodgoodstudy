//
//  Thingie.m
//  SimpleEncoding
//
//  Created by LinHaotian on 2020/9/18.
//  Copyright © 2020 haotian. All rights reserved.
//

#import "Thingie.h"

@implementation Thingie

@synthesize name;

@synthesize magicNumber;

@synthesize shoeSize;

@synthesize subThingies;

- (id)initWithName:(NSString *)n magicNumber:(int)mn shoeSize:(float)ss {
    if (self = [super init]) {
        self.name = n;
        self.magicNumber = mn;
        self.shoeSize = ss;
        self.subThingies = [NSMutableArray array];
    }
    return self;
}

- (void)dealloc {
    [name release];
    [subThingies release];
    
    [super dealloc];
}

- (NSString *)description {
    NSString *description = [NSString stringWithFormat:@"%@: %d/%.1f %@", name, magicNumber, shoeSize, subThingies];
    
    return description;
}

@end
