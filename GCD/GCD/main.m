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
    
    
    
    
//    NSArray *array;;
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    //在global dispatch queue中非同步执行
//    dispatch_async(queue, ^{
//        //等待dispatch_apply函数中全部处理执行结束
//        dispatch_apply([array count], queue, ^(size_t index) {
//            //并处理包含在nsarray对象的全部对象
//            NSLog(@"%zu: %@", index, [array objectAtIndex:index]);
//        });
//        //dispatch_apply函数中的处理全部执行结束
//        //在main dispatch queue中非同步执行
//        dispatch_async(dispatch_get_main_queue(), ^{
//            //在main dispatch queue中执行处理 用户界面等待更新
//            NSLog(@"done");
//        });
//    });
//    dispatch_suspend(queue);
//    dispatch_resume(queue);
    
    
    
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//
//    NSMutableArray *array = [[NSMutableArray alloc] init];
//
//    for (int i = 0; i < 100000; i++) {
//        dispatch_async(queue, ^{
//            [array addObject:[NSNumber numberWithInt:i]];
//        });
//    }
    
    
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(1);
    
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
    
    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, 1ull * NSEC_PER_SEC);
    
    long result = dispatch_semaphore_wait(semaphore, time);
    
    if (result == 0) {
        //由于semaphore计数值大于等于1，或在待机中的指定时间内
        //所以 计数值-1
        //可执行需要进行排他控制的处理
    }
    else {
        //由于计数值0
        //因此在达到指定时间为止待机
    }
    
    
    return 0;
}
