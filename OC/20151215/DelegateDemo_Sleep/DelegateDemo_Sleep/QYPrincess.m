//
//  QYPrincess.m
//  DelegateDemo_Sleep
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYPrincess.h"
#import "QYPrince.h"

@implementation QYPrincess

-(void)sleepFor:(NSTimeInterval)time
{
    NSLog(@"我要睡觉了，记得叫我哦~~");
    
    //睡觉之前告诉自己的代理一个时间，时间到之后叫醒自己
    [self.delegate tellMeTime:time];//涉及到方法的话，必须包含类的头文件，
}

@end
