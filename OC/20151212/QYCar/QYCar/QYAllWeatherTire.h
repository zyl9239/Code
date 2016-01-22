//
//  QYAllWeatherTire.h
//  QYCar
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYTire.h"

#define kDefaultRainHanding 22.2
#define kDefaultSnowHanding 33.3

@interface QYAllWeatherTire :QYTire

{
    float _rainHanding;//雨天处理能力系数
    float _snowHanding;//雪天处理能力系数
}

-(id)initWithRainHanding:(float)rainHanging;
-(id)initWithSnowHanding:(float)snowHanging;
-(id)initWithRainHanding:(float)rainHanging andSnowHanding:(float)snowHanding;

-(void)setRainHanding:(float)rainHanding;
-(float)rainHanding;

-(void)setSnowHanding:(float)snowHanding;
-(float)snowHanding;

@end
