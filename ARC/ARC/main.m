//
//  main.m
//  ARC
//
//  Created by LinHaotian on 2020/9/24.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Test.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        id __strong obj0 = [[NSObject alloc] init]; //对象A  obj0持有其强引用
//
//        id __strong obj1 = [[NSObject alloc] init]; //对象B  obj1持有其强引用
//
//        id __strong obj2 = nil; //obj2不持有任何对象
//
//        obj0 = obj1; // obj0 持有obj1赋值的B的强引用 ，因为被赋值，所以原先持有的A强引用失效，A所有者不存在，废弃对象A，此时持有B的强引用就有0和1
//
//        obj2 = obj0; //2持有由0赋值的B的强引用，此时持有B强引用变量的，3者都有
//
//        obj1 = nil; // 0和2持有
//
//        obj0 = nil; // 2持有
//
//        obj2 = nil; // 对象B持有者全无，废弃B
        
        
        //......
        
//        id __strong ttt = [[Test alloc] init]; //ttt持有对象test强引用
//
//        [ttt setObject:[[NSObject alloc] init]]; //test对象的obj成员持有nsobject对象的强引用。
//
//        //因为ttt变量超出作用域，强引用失效。自动释放test对象。持有者不存在，所以废弃test。
//        //同时成员obj也被废弃，NSObject对象强引用失效，自动释放。持有者不存在，废弃。
        
        //......
        
        //内存泄漏
//        id test0 = [[Test alloc] init];
//        id test1 = [[Test alloc] init];
//        [test0 setObject:test1];
//        [test1 setObject:test0];
        
        //.......
        
        id __weak obj1 = nil;
        {
            id __strong obj0 = [[NSObject alloc] init]; //自己持有对象，强引用
            
            obj1 = obj0; //obj1持有对象弱引用
            
            NSLog(@"A: %@", obj1);
        }
        // 0超出作用于，强引用失效，所以释放，对象无持有者，废弃。
        //废弃同时 1弱引用失效，nil赋值给1
        NSLog(@"B: %@", obj1);
        
    }
    return 0;
}
