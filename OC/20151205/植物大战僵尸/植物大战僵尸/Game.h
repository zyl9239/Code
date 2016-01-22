//
//  Game.h
//  植物大战僵尸
//
//  Created by qingyun on 15/12/5.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"
#import "Plant.h"
#import "Zombie.h"
@interface Game : NSObject
{
    Plant *_plant;
    Zombie *_zombie;
}
-(void)setPLant:(Plant *)plant;
-(Plant *)plant;

-(void)setZombie:(Zombie *)zombie;
-(Zombie *)zombie;

-(void)start;
@end
