//
//  QYCar.m
//  QYCar
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYCar.h"
#import "QYEngine.h"

@implementation QYCar
-(id)init
{
    if (self = [super init]) {
        _engine = [[QYEngine alloc]init];
        
        _tires  = [NSMutableArray array];
        for (int i = 0; i < 4; i++) {
            [_tires addObject:[NSNull null]];//用四个空对象占位
        }
    }
    return self;
}

-(void)setEgnine:(QYEngine *)engine
{
    if (_engine != engine) {
        [_engine release];
        _engine = [engine retain];
    }
}
-(QYEngine *)engine
{
    return _engine;
}

-(void)setTire:(QYTire *)tire atIndex:(int)index
{
    if (index < kLeftFrontTire || index > kRightBackTier) {
        NSLog(@"Invalid index:(%d) in %s",index,__func__);//在哪个函数（__func__）打印
        return;
    }
    [_tires replaceObjectAtIndex:index withObject:tire];
}
-(QYTire *)tireAtIndex:(TireIndex)index
{
    if (index < kLeftFrontTire || index > kRightBackTier) {
        NSLog(@"Invalid index:(%d) in %s",index,__func__);
        return  nil;
    }
    return [_tires objectAtIndex:index];
}

-(NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"我是一辆汽车：有一个%@，四个轮胎：%@,%@,%@,%@",_engine,[self tireAtIndex:kLeftFrontTire],_tires[kLeftBackTire],_tires[kRightFrontTire],_tires[kRightBackTier]];
    return desc;
}


@end
