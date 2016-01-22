//
//  Zombie.m
//  植物大战僵尸
//
//  Created by qingyun on 15/12/5.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "Zombie.h"

@implementation Zombie
+ (instancetype)pzobjWithName:(NSString *)name andLife:(int)life andAttack:(int)attack
{
    Zombie *z = [Zombie new];
    [z setName:name];
    [z setLife:life];
    [z setAttack:attack];
    return z;
}

@end
