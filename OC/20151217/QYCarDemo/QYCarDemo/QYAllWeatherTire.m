//
//  QYAllWeatherTire.m
//  QYCarDemo
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYAllWeatherTire.h"

@implementation QYAllWeatherTire

- (id)init
{
    return [self initWithRainHandling:kDefaultRainHandling andSnowHandling:kDefaultSnowHandling];
}
- (id)initWithRainHandling:(float)rainHandling
{
    return [self initWithRainHandling:rainHandling andSnowHandling:kDefaultSnowHandling];
}
- (id)initWithSnowHandling:(float)snowHandling
{
    return [self initWithRainHandling:kDefaultRainHandling andSnowHandling:snowHandling];
}

//子类的指定初始化方法要调用父类的指定初始化方法
- (id)initWithRainHandling:(float)rainHandling andSnowHandling:(float)snowHandling
{
    if (self = [super initWithPressure:kDefaultPressure andTreadDepth:kDefaultTreadDepth]) {
        _rainHandling = rainHandling;
        _snowHandling = snowHandling;
    }
    return self;
}
- (id)copyWithZone:(NSZone *)zone
{
    //1.对于从父类继承过来的胎压和胎纹深度两个成员变量的值，如果采用下面的写法，设置的是默认值，这样有可能不符合实际的参数
//    QYAllWeatherTire *newAllWeatherTire = [[QYAllWeatherTire allocWithZone:zone] initWithRainHandling:_rainHandling andSnowHandling:_snowHandling];
    
    //2.站在父类的肩膀上，也就是说首先让父类完成父类里面的成员变量的拷贝，然后自己拷贝自己扩展的成员变量
    //下面的写法也有问题：父类申请的空间大小只能够存放胎压和胎纹深度两个成员变量，无法存储子类扩展的成员变量
//    QYAllWeatherTire *newAllWeatherTire = [super copyWithZone:zone];
//    newAllWeatherTire.rainHandling = _rainHandling;
//    newAllWeatherTire.snowHandling = _snowHandling;
    
    //3.首先把以子类的大小申请空间，然后挨个对成员变量（从父类继承来的和自己扩展的）赋值
    //下面这种写法绝对不错，能完成功能。但是考虑到继承的层数越多，后面的子类要写所有的前面父类的成员变量的赋值
//    QYAllWeatherTire *newAllWeatherTire = [[QYAllWeatherTire allocWithZone:zone] init];
//    
//    newAllWeatherTire.pressure = self.pressure;
//    newAllWeatherTire.treadDepth = self.treadDepth;
//    newAllWeatherTire.rainHandling = _rainHandling;//self.rainHandling;
//    newAllWeatherTire.snowHandling = self.snowHandling;
    //4.修改第二种方式：解决内存空间申请的问题
    QYAllWeatherTire *newAllWeatherTire = [super copyWithZone:zone];
    newAllWeatherTire.rainHandling = _rainHandling;
    newAllWeatherTire.snowHandling = _snowHandling;
    
    return newAllWeatherTire;
    
}
//- (void)setRainHandling:(float)rainHandling
//{
//    _rainHandling = rainHandling;
//}
//- (float)rainHandling
//{
//    return _rainHandling;
//}
//
//- (void)setSnowHandling:(float)snowHandling
//{
//    _snowHandling = snowHandling;
//}
//- (float)snowHandling
//{
//    return _snowHandling;
//}

//属性本身可以被继承
//但是子类里面不能直接用父类属性自动生成的成员变量(_父类属性),要通过getter方法才行
- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"胎压：%.1f/胎纹深度：%.1f/雨天处理能力：%.1f/雪天处理能力：%.1f",self.pressure,self.treadDepth,_rainHandling,_snowHandling];
    return desc;
}
@end
