//
//  QYCar.h
//  QYCar
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
@class QYEngine;
@class QYTire;

typedef enum {
    kLeftFrontTire,
    kLeftBackTire,
    kRightFrontTire,
    kRightBackTier
}TireIndex;

@interface QYCar : NSObject

{
    QYEngine *_engine;
    NSMutableArray *_tires;
}

-(void)setEgnine:(QYEngine *)engine;
-(QYEngine *)engine;

-(void)setTire:(QYTire *)tire atIndex:(int)index;
-(QYTire *)tireAtIndex:(TireIndex)index;
@end
