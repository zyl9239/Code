//
//  main.m
//  内存管理-ARC
//
//  Created by qingyun on 15/12/11.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pig.h"

int main(int argc, const char * argv[]) {
    //__strong 是强引用修饰符，所有的对象类型的指针黑夜都是强引用，一个对象如果没有强引用指向的时候就会被销毁。
    //1和2演示的是方法或者函数中强引用的使用情况
//    Pig *p0;
    //1🐷1是自己创建的对象，创建时P1指向对象，出了代码块，p1立马失效，所以该对象没强引用，所以会被销毁。
    {
        __strong Pig *p1 = [Pig new];
        [p1 setName:@"🐷1"];
//        p0 = p1;
    }//代码块外，p1失效
    
    //2不是自己创建的对象，使用强引用指向时，会retain一次，出了代码块，该对象会被release一次，但是不确定是否会被销毁。
    
    {
        NSString *str = @"🐷1";
    }
    
    //3
    Pig *p2 = [Pig new];
    [p2 setName: @"🐷2"];
    Pig *p3 = p2;
    p2 = [Pig new];
    [p2 setName:@"🐷3"];
    Pig *p4 = nil;
    p3 = p4;
//    p2 = p3;
    
    //4循环引用
    {
        Pig *p5 = [Pig new];
        [p5 setName:@"🐷5"];
        
        Pig *p6 = [Pig new];
        [p6 setName:@"🐷6"];
        
        [p5 setFriend:p6];
        [p6 setFriend:p5];
    }
    
    //5自我引用
    {
        Pig *p7 =[Pig new];
        [p7 setName:@"🐷7"];
        
        [p7 setFriend:p7];
    }
    
    //循环引用与自我引用是不推荐的两种设计方式，这样的设计是违背了低耦合高内建的原则
    //弱引用可以解决循环引用和自我引用
    
    Pig *p77;
    NSLog(@"p77 >>>>>> %p",p77);
    __weak Pig *p8;
    NSLog(@"p8 >>>>>> %p",p8);
    {
        Pig *p9 = [Pig new];
        [p9 eatAndSleepAndDie];
        [p9 setName:@"🐷8"];
        p8 = p9;
        NSLog(@"p8 >>>>>> %p",p8);
        [p8 eatAndSleepAndDie];
    }
    NSLog(@"p8 >>>>>> %p",p8);//弱引用归零，弱引用在失效后会自动置为nil
    
    //__nusafe_unretained 是不安全的弱引用
    __unsafe_unretained Pig *p10;
    NSLog(@"p10 >>>>>> %p",p10);
    {
        Pig *p11 = [Pig new];
        [p11 eatAndSleepAndDie];
        [p11 setName:@"🐷10"];
        p10 = p11;
        NSLog(@"p10 >>>>>> %p",p10);
        [p10 eatAndSleepAndDie];
    }
    NSLog(@"p10 >>>>>> %p",p10);
    [p10 eatAndSleepAndDie];
    
    return 0;
}

Pig *pp;
void foo(void)
{
    __strong Pig *p1 = [Pig new];
    [p1 setName:@"🐷1"];
    pp = p1;
}
