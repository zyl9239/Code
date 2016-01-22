//
//  QYCar.m
//  QYCarDemo
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYCar.h"
#import "QYEngine.h"
@implementation QYCar
- (id)init
{
    if (self = [super init]) {
        //_engine = [[QYEngine alloc] init];
        self.engine = [[QYEngine alloc] init];
        
        _tires = [NSMutableArray array];
        for (int i = 0; i < 4; i++) {
            [_tires addObject:[NSNull null]];//用四个空对象占位
        }
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    //1.为新汽车分配内存并初始化
    QYCar *newCar = [[[self class] allocWithZone:zone] init];
    //等价于 QYCar *newCar = [[QYCar alloc]init];
    //2.把当前汽车的发动机做拷贝，把副本设置到新汽车上
    QYEngine *newEngine = [_engine copy];
    newCar.engine = newEngine;
    [newEngine release];
    newEngine = nil;
    
    //3.把当前汽车的四个轮胎分别做拷贝，并且把副本设置到汽车的对应位置上
    for (int i=0; i<4; i++) {
        QYTire *newTire = [[self tireAtIndex:i] copy];
        [newCar setTire:newTire atIndex:i];
        [newTire release];
        newTire = nil;
    }
    return newCar;
}
//- (void)setEngine:(QYEngine *)engine
//{
////    if (_engine != engine) {
////        [_engine release];
////        _engine = [engine retain];
////    }
//    //点语法本质就是调用setter方法，所以不能用在setter方法内部(导致自己调用自己，永远出不来了)
//    //self.engine 等同于[self setEngine:]
//    if (self.engine != engine) {
//        [self.engine release];
//        self.engine = [engine retain];
//    }
//}
//- (QYEngine *)engine
//{
//    return _engine;
//}

- (void)setTire:(QYTire *)tire atIndex:(TireIndex)index
{
    if (index < kLeftFrontTire || index > kRightBackTire) {
        NSLog(@"Invalid index:(%d) in %s",index,__func__);
        return;
    }
    [_tires replaceObjectAtIndex:index withObject:tire];
}
- (QYTire *)tireAtIndex:(TireIndex)index
{
    if (index < kLeftFrontTire || index > kRightBackTire) {
        NSLog(@"Invalid index:(%d) in %s",index,__func__);
        return nil;//无效的对象指针
    }
    return [_tires objectAtIndex:index];
}

- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"我是一辆汽车：有一个%@,四个轮胎：%@\n,%@\n,%@\n,%@",_engine,[self tireAtIndex:kLeftFrontTire],_tires[kLeftBackTire],_tires[kRightFrontTire],_tires[kRightBackTire]];
    
    return desc;
}

- (void)dealloc
{
    [_engine release];
    //[_tires release];//_tires数组是通过array方法创建的，所以被加入自动释放池中了，在池子销毁时，被发送release,所以不需要手动release
    [super dealloc];
    NSLog(@"bye...");
}
@end
