//
//  QYPrincess.h
//  DelegateDemo_Sleep
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
@class QYPrince;

@interface QYPrincess : NSObject

@property (nonatomic,strong)id delegate;

-(void)sleepFor:(NSTimeInterval)time;

@end
