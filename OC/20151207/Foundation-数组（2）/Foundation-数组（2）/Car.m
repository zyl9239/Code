//
//  Car.m
//  Foundation-数组（2）
//
//  Created by qingyun on 15/12/7.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)setName:(NSString *)name
{
    _name = name;
}

-(void)setEngine:(Engine *)engine
{
    _engine = engine;
}

-(void)setTire:(Tire *)tire atIndex:(int)index
{
    ctires[index]= tire;
}

-(void)setTires:(NSMutableArray *)tires
{
    _tires = tires;
}

-(NSMutableArray *)tires
{
    return _tires;
}
@end
