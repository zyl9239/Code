//
//  Pig.h
//  内存管理-ARC
//
//  Created by qingyun on 15/12/11.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pig : NSObject
{
    NSString *_name;
    Pig *_pfriend;
}
+(instancetype)pigWithName:(NSString *)name andWeight:(float)weight;
-(void)setName:(NSString *)name;
-(void)setFriend:(Pig *)pfriend;
-(void)eatAndSleepAndDie;
@property (nonatomic, strong, readonly) Pig *xxxxx;
@property (nonatomic) float weight;

@end
