//
//  PVZObject.m
//  植物大战僵尸
//
//  Created by qingyun on 15/12/5.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "PVZObject.h"

@implementation  PVZObject
-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}

-(void)setLife:(int)life
{
    _life = life;
}
-(int)life
{
    return _life;
}

-(void)setAttack:(int)attack
{
    _attack = attack;
}
-(int)attack
{
    return _attack;
}

@end
