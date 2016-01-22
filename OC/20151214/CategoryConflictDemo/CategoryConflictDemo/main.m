//
//  main.m
//  CategoryConflictDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Length.h"
#import "QYPerson.h"
#import "QYPerson+eat.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       NSString *str = @"12345";
        NSLog(@"length >>>> %lu",[str length]);
        
        QYPerson *person = [[QYPerson alloc]init];
        [person eat];
    }
    return 0;
}
