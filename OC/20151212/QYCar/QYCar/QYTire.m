//
//  QYTire.m
//  QYCar
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYTire.h"

@implementation QYTire

#pragma mark - 初始化方法

//遍历初始化方法中调用指定初始化方法，如果用户传进来对应的参数，那我们就用这个参数，没用传参，使用默认参数
-(id)init
{
    return [self initWithPressure:kDefaultPressure andTreadDepth:kDefaultTreadDepth];
}

-(id)initWithPressure:(float)pressure
{
    return [self initWithPressure:pressure andTreadDepth:kDefaultTreadDepth];
}

-(id)initWithTreadDepth:(float)treadDepth
{
    return [self initWithPressure:kDefaultPressure andTreadDepth:treadDepth];
}

//指定初始化方法
-(id)initWithPressure:(float)pressure andTreadDepth:(float)treadDepth
{
    if (self = [super init]) {
        _pressure = pressure;
        _treadDepth = treadDepth;
    }
    return self;
}

#pragma mark - setter&getter方法

-(void)setPressure:(float)pressure
{
    _pressure = pressure;
}
-(float)pressure
{
    return _pressure;
}

-(void)setTreadDepth:(float)treadDepth
{
    _treadDepth = treadDepth;
}
-(float)treadDepth
{
    return _treadDepth;
}

-(NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"胎压：%.1f，胎纹深度：%.1f",_pressure,_treadDepth];
    return desc;
}

@end
