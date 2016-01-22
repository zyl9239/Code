//
//  main.m
//  PrivateAPIDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYPerson.h"
#import "QYPerson+Money.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        QYPerson *person = [[QYPerson alloc]initWithName:@"钻石王老五" andAge:40];
        
        [person tellMeYouName];
        [person tellMeYouMoney];
    }
    return 0;
}
