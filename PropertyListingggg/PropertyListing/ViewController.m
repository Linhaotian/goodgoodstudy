//
//  ViewController.m
//  PropertyListing
//
//  Created by LinHaotian on 2020/9/18.
//  Copyright © 2020 haotian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDate *date = [NSDate date];
    NSLog(@"today......%@", date);
    
    NSDate *yesterday = [NSDate dateWithTimeIntervalSinceNow:- (24 *60 *60)];
    NSLog(@"yesterday......%@", yesterday);
    
    const char *string = "hi there, this is a C string";
    NSData *data = [NSData dataWithBytes:string length:strlen(string) + 1];
    NSLog(@"data is %@", data);
    
    NSArray *phrase = [NSArray arrayWithObject:@[@"i", @"can", @"help", @"you"]];
    [phrase writeToFile:@"/tmp/verbiage.txt" atomically:YES];
    
    NSArray *phrase222 = [NSArray arrayWithContentsOfFile:@"/tmp/verbiage.txt"];
    NSLog(@"%@",phrase222);
}


@end
