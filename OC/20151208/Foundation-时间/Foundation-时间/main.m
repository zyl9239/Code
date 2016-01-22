//
//  main.m
//  Foundation-时间
//
//  Created by qingyun on 15/12/8.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
   
    //1.时间对象
    NSDate *now = [NSDate date];
    NSLog(@"now >>>> %@",now);
    
    //2.时间间隔(单位：Second)
    NSTimeInterval interval = 86400;
    NSDate *tomorrow = [now dateByAddingTimeInterval:interval];
    NSDate *yesteday = [now dateByAddingTimeInterval:-(interval)];
    NSLog(@"tomorrow >>>> %@   yesteday >>>> %@",tomorrow,yesteday);
    
    NSDate *somedate = [NSDate dateWithTimeInterval:interval sinceDate:now];
    NSDate *somedate1 = [NSDate dateWithTimeIntervalSince1970:86400];
    
    //3.比较时间
    NSDate *earlydate = [tomorrow earlierDate:yesteday];
    NSDate *lastdate = [tomorrow laterDate:yesteday];
    NSTimeInterval interval1 = [tomorrow timeIntervalSinceDate:yesteday];
    
    NSDate *future = [NSDate distantFuture];
    NSLog(@"future >>>> %@",future);
    
    //4.时间格式化工具
    NSDateFormatter *formatter = [NSDateFormatter new];
    [formatter setDateFormat:@"yy-MM-dd HH:mm:ss"];
    NSLog(@"date >>>> %@",[formatter stringFromDate:now]);
    
    [formatter setDateFormat:@"yy--MM---dd,HH:mm:ss"];
    NSString *dateStr = @"12--09---15 15:02:04";
    NSLog(@"date >>>> %@",[formatter dateFromString:dateStr]);
    
    
    //5.时区
    NSArray *zones = [NSTimeZone knownTimeZoneNames];
    for (NSString *zoneName in zones) {
        if ([zoneName hasPrefix:@"Asia"]) {
            NSLog(@"zone >>>> %@",zoneName);
        }
    }
    
    
    //6.通过日历来创建任意的时间
    NSCalendar *canlendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [NSDateComponents new];
    [components setYear:2015];
    [components setMonth:12];
    [components setDay:8];
    
    NSDate *anydate = [canlendar dateFromComponents:components];
    NSLog(@"anydate >>>> %@",anydate);
    
    
    //7.计时器 NSTimer
    Person *xiaoming = [Person new];
    //arg1:计时器的间隔（单位：秒）
    //arg2:事件的执行者
    //arg3:做的时间 @selector(方法名)有参数的方法默认就是这个计时器本身
    //arg4:计时器需要传递的其他信息，可以是字典或者数组甚至其他的对象用来包含更多的信息
    //arg5:是否重复执行
    [NSTimer scheduledTimerWithTimeInterval:1 target:xiaoming selector:@selector(dosome) userInfo:@"滚出去！" repeats:YES];
    //开启一个运行循环，使计时器生效
    [[NSRunLoop mainRunLoop] run];
    
    return 0;
}
