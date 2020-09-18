//
//  main.m
//  SimpleEncoding
//
//  Created by LinHaotian on 2020/9/18.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Thingie.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Thingie *thing = [[Thingie alloc] initWithName:@"ht" magicNumber:44 shoeSize:10.5];
        
        NSLog(@"some thing: %@", thing);
        
    }
    return 0;
}
