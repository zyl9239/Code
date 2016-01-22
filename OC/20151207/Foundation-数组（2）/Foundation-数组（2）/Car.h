//
//  Car.h
//  Foundation-数组（2）
//
//  Created by qingyun on 15/12/7.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Engine,Tire;

@interface Car : NSObject
{
    NSString *_name;
    Engine *_engine;
    Tire *ctires[4];
    NSMutableArray *_tires;
}

-(void)setName:(NSString *)name;

-(void)setEngine:(Engine *)engine;

-(void)setTire:(Tire *)tire atIndex:(int)index;

-(void)setTires:(NSMutableArray *)tires;

-(NSMutableArray *)tires;

@end
