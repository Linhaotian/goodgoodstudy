//
//  main.m
//  CategoryThing
//
//  Created by LinHaotian on 2020/9/16.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CategoryThing.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CategoryThing *thing = [[CategoryThing alloc] init];
        [thing setThing1:5];
        [thing setThing2:23];
        [thing setThing3:42];
            
        NSLog(@"Things are %@", thing);
    }
    return 0;
}
