//
//  QYAllWeatherTire.m
//  QYCar
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYAllWeatherTire.h"

@implementation QYAllWeatherTire

-(id)init
{
    return [self initWithRainHanding:kDefaultRainHanding andSnowHanding:kDefaultSnowHanding];
}

-(id)initWithRainHanding:(float)rainHanging
{
    return [self initWithRainHanding:rainHanging andSnowHanding:kDefaultSnowHanding];
}
-(id)initWithSnowHanding:(float)snowHanging
{
    return [self initWithRainHanding:kDefaultRainHanding andSnowHanding:snowHanging];
}
-(id)initWithRainHanding:(float)rainHanging andSnowHanding:(float)snowHanding
{
    if (self = [super init]) {
        _rainHanding = rainHanging;
        _snowHanding = snowHanding;
    }
    return self;
}

-(void)setRainHanding:(float)rainHanding
{
    _rainHanding = rainHanding;
}
-(float)rainHanding
{
    return _rainHanding;
}

-(void)setSnowHanding:(float)snowHanding
{
    _snowHanding = snowHanding;
}
-(float)snowHanding
{
    return _snowHanding;
}

-(NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"胎压：%.1f；胎纹深度：%.1f；雨天处理能力：%.1f；雪天处理能力：%.1f\n",_pressure,_treadDepth,_rainHanding,_snowHanding];
    return desc;
}

@end
