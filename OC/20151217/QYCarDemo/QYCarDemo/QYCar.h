//
//  QYCar.h
//  QYCarDemo
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QYEngine;
@class QYTire;

typedef enum{
    kLeftFrontTire,
    kLeftBackTire,
    kRightFrontTire,
    kRightBackTire
} TireIndex;
@interface QYCar : NSObject <NSCopying>
{
    //QYEngine *_engine;
    NSMutableArray *_tires;
}

@property (nonatomic,strong)QYEngine *engine;
@property (nonatomic,strong)NSMutableArray *tires;

- (void)setTires:(NSMutableArray *)tires;
- (NSMutableArray *)tires;
//- (void)setEngine:(QYEngine *)engine;
//- (QYEngine *)engine;

- (void)setTire:(QYTire *)tire atIndex:(TireIndex)index;
- (QYTire *)tireAtIndex:(TireIndex)index;


@end
