//
//  main.m
//  DelegateDemo_Sleep
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYPrince.h"
#import "QYPrincess.h"
#import "QYWitch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //这是一个关于睡觉-叫醒的浪漫故事。。。
        
        
        //创建一个公主
        QYPrincess *zhangmengjie = [[QYPrincess alloc] init];
        
        //创建一个王子
//        QYPrince *zhimengzhao = [[QYPrince alloc] init];
        
        //创建巫婆
        QYWitch *wupo = [[QYWitch alloc]init];
        
        //设置王子为公主的代理
//        zhangmengjie.delegate = zhimengzhao;
        zhangmengjie.delegate = wupo;
        
        //公主睡觉
        [zhangmengjie sleepFor:8];//时间参数以秒为单位
        
        //公主的代理叫醒公主（定时器到之后，自动调用wakeUp方法）
        
        
       //当前进程的runloop必须处于运行状态，保证定时器能正常触发事件
        //当前是Foundation框架，是基于OS X的应用程序，所以要手动启动runLoop
        //iOS中是默认启动的
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}
