//
//  Pig.m
//  内存管理-ARC
//
//  Created by qingyun on 15/12/11.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "Pig.h"

@implementation Pig

+(instancetype)pigWithName:(NSString *)name andWeight:(float)weight
{
    //如果需要自动释放，那么需要用__autoreleasing来修饰，但是编译器会自动识别，这样返回的对象需要自动释放，所以不需要写
    __autoreleasing Pig *p = [Pig new];
    [p setName:name];
    [p setWeight:weight];
    //[p autorelease];
    return p;
}
-(void)setName:(NSString *)name
{
    _name = name;
}

-(void)setFriend:(Pig *)pfriend
{
    _pfriend = pfriend;
}

-(void)eatAndSleepAndDie
{
    NSLog(@"吃饱喝足上路。。。。");
}

-(void)dealloc
{
    NSLog(@"%@ dead......",_name);
//    [super dealloc]不可调用，系统会自动调用
}
@end
