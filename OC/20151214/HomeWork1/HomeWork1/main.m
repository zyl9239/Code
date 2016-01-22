//
//  main.m
//  HomeWork1
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+intSum.h"

int main(int argc, const char * argv[]) {
    
    int sum = [NSString intSum:@"234asdf5069"];   //调用类方法
    
    int count = [@"20304asdfjas2939492sldf" intCount];   //调用对象方法
    
    NSLog(@"sum = %d, count = %d",sum,count);
    
    char abc = [NSString flip:@"abcdefg"];
    NSLog(@"abc is%c",abc);
    
    return 0;
}
