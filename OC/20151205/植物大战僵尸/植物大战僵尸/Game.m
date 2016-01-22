//
//  Game.m
//  植物大战僵尸
//
//  Created by qingyun on 15/12/5.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "Game.h"

@implementation Game
-(void)setPLant:(Plant *)plant
{
    _plant = plant;
}
-(Plant *)plant
{
    return _plant;
}

-(void)setZombie:(Zombie *)zombie
{
    _zombie = zombie;
}
-(Zombie*)zombie
{
    return _zombie;
}
-(void)start
{
    
}

@end
