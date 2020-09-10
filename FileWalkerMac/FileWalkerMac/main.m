//
//  main.m
//  FileWalkerMac
//
//  Created by LinHaotian on 2020/9/10.
//  Copyright © 2020 haotian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSFileManager *manager = [NSFileManager defaultManager];
        
        NSString *home = [@"~" stringByExpandingTildeInPath];
        
        //把路径字符串传递给文件管理器
        NSDirectoryEnumerator *direnum = [manager enumeratorAtPath:home];
        
        NSMutableArray *files = [NSMutableArray arrayWithCapacity:42];
        
        NSString *filename;
        while (filename = [direnum nextObject]) { //目录循环
            if ([[filename pathExtension] isEqual:@"jpg"]) { //pathExtension输出文件扩展名
                [files addObject:filename];
            }
        }
        
        NSEnumerator *fileenum = [files objectEnumerator];
        
        while (filename = [fileenum nextObject]) {
            NSLog(@"%@", filename);
        }
        
    }
    return 0;
}
