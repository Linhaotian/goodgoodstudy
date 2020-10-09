//
//  main.m
//  GCD
//
//  Created by LinHaotian on 2020/10/6.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //默认优先级中执行block
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//
//        //main dispatch queue中执行block
//
//        dispatch_async(dispatch_get_main_queue(), ^{
//
//            //只能在主线程中执行的处理
//        });
//    });
    
    
    
//    //3秒后将指定的block追加到Main Dispatch Queue中
//    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, 3ull *NSEC_PER_SEC);
//
//    dispatch_after(time, dispatch_get_main_queue(), ^{
//        NSLog(@"waited at least three seconds.");
//    });
    
    
//    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, 1ull *NSEC_PER_SEC);
//
//    long result = dispatch_group_wait(group, time);
//
//    if (result == 0) {
//        //属于dispatch group 全部处理执行结束
//    }
//    else {
//        //某一个处理还在执行中
//    }
    
    
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//
//    dispatch_sync(queue, ^{
//         //处理
//    });
    
    return 0;
}
