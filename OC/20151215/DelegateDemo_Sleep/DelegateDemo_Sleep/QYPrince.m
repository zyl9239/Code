//
//  QYPrince.m
//  DelegateDemo_Sleep
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYPrince.h"

@implementation QYPrince

-(void)tellMeTime:(NSTimeInterval)time
{
    //知道时间time后，要设置一个闹钟(定时器)，时间到之后，执行操作（wakeUp）
    if ([self respondsToSelector:@selector(wakeUp)]) {
        //创建定时器
        //1.时间间隔
        //2.时间到之后，向谁发消息。（接收消息的目标或者对象）
        //3.响应选择器（时间到之后，执行哪个方法）
        //4.定时器失效之后，由谁销毁定时器
        //5.是否重复定时，YES表示重复定时，NO表示只定时一次
        [NSTimer scheduledTimerWithTimeInterval:time target:self selector:@selector(wakeUp) userInfo:nil repeats:NO];
    }
    else
    {
        NSLog(@"不要吵醒她，让她多睡会");
    }
}

@end
