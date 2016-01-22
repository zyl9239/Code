//
//  Plant.m
//  植物大战僵尸
//
//  Created by qingyun on 15/12/5.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "Plant.h"

@implementation Plant

+ (instancetype)pzobjWithName:(NSString *)name andLife:(int)life andAttack:(int)attack
{
    Plant *p = [Plant new];
    [p setName:name];
    [p setLife:life];
    [p setAttack:attack];
    return p;
}

@end
