//
//  QYAllWeatherTire.h
//  QYCarDemo
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYTire.h"

#define kDefaultRainHandling 22.2
#define kDefaultSnowHandling 33.3
@interface QYAllWeatherTire : QYTire
//{
//    float _rainHandling;//雨天处理能力系数
//    float _snowHandling;//雪天处理能力系数
//}
@property (nonatomic)float rainHandling;
@property (nonatomic)float snowHandling;

- (id)initWithRainHandling:(float)rainHandling;
- (id)initWithSnowHandling:(float)snowHandling;
- (id)initWithRainHandling:(float)rainHandling andSnowHandling:(float)snowHandling;

//- (void)setRainHandling:(float)rainHandling;
//- (float)rainHandling;
//
//- (void)setSnowHandling:(float)snowHandling;
//- (float)snowHandling;

@end
