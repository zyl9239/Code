//
//  QYTire.h
//  QYCarDemo
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kDefaultPressure 13.5
#define kDefaultTreadDepth  26.4

@interface QYTire : NSObject <NSCopying>
//{
//    float _pressure;//胎压
//    float _treadDepth;//胎纹深度
//}

@property (nonatomic)float pressure;
@property (nonatomic)float treadDepth;

- (id)initWithPressure:(float)pressure;
- (id)initWithTreadDepth:(float)treadDepth;
- (id)initWithPressure:(float)pressure andTreadDepth:(float)treadDepth;


//- (void)setPressure:(float)pressure;
//- (float)pressure;
//
//- (void)setTreadDepth:(float)treadDepth;
//- (float)treadDepth;

@end
