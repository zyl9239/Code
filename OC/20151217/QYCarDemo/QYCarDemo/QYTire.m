//
//  QYTire.m
//  QYCarDemo
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYTire.h"

@implementation QYTire

#pragma mark - 初始化方法
//便利初始化方法中调用指定初始化方法，如果用户传进来对应的参数，那我们就用这个参数，没有传参的，则使用默认值设置
- (id)init
{
    return [self initWithPressure:kDefaultPressure andTreadDepth:kDefaultTreadDepth];
}
- (id)initWithPressure:(float)pressure
{
    return [self initWithPressure:pressure andTreadDepth:kDefaultTreadDepth];
}
- (id)initWithTreadDepth:(float)treadDepth
{
    return [self initWithPressure:kDefaultPressure andTreadDepth:treadDepth];
}
//指定初始化方法
- (id)initWithPressure:(float)pressure andTreadDepth:(float)treadDepth
{
    if (self = [super init]) {
        //_pressure = pressure;
        //_treadDepth = treadDepth;
        self.pressure = pressure;
        self.treadDepth = treadDepth;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    //class方法可以获取当前对象真实所属的类：[self class]
    QYTire *newTire = [[[self class] allocWithZone:zone] initWithPressure:_pressure andTreadDepth:_treadDepth];
    
    return newTire;
}
//#pragma mark - setter&getter方法
//
//- (void)setPressure:(float)pressure
//{
//    _pressure = pressure;
//}
//- (float)pressure
//{
//    return _pressure;
//}
//
//- (void)setTreadDepth:(float)treadDepth
//{
//    _treadDepth = treadDepth;
//}
//- (float)treadDepth
//{
//    return _treadDepth;
//}

- (NSString *)description
{
    //NSString *desc = [NSString stringWithFormat:@"胎压：%.1f/胎纹深度：%.1f",_pressure,_treadDepth];
    NSString *desc = [NSString stringWithFormat:@"胎压：%.1f/胎纹深度：%.1f",self.pressure,self.treadDepth];
    return desc;
}
@end
