//
//  Person.m
//  引用计数
//
//  Created by qingyun on 15/12/10.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)run
{
    NSLog(@"running..........");
}

//dealloc是与alloc刚好想反的动作，表示需要把对象的内存回收，简单来说是把该对象使用的内存空间标记为可以被重新分配使用，如果在对象执行过dealloc之后，继续使用原来的指针访问该内存，当系统再重新分配使用该内存时候，内存中原来的数据被覆盖，这样程序就会崩溃，所以需要在dealloc之后对原来指向对象内存空间的指针置为nil
-(void)dealloc
{
    NSLog(@"安心地去死吧。。。。。。。");
    [super dealloc];
}

@end
