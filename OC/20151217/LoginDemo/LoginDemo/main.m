//
//  main.m
//  LoginDemo
//
//  Created by qingyun on 15/12/17.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LogIn.h"
#import "Register.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LogIn *log = [[LogIn alloc] init];
        NSLog(@"登陆界面加载。。。");
        
        NSLog(@"开始注册。。。");
        [log toRegister];
        
        
    }
    return 0;
}
