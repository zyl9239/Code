//
//  main.m
//  植物大战僵尸
//
//  Created by qingyun on 15/12/5.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Plant.h"
#import "Zombie.h"
#import "Game.h"

int main(int argc, const char * argv[]) {
    Plant * pee = [Plant pvzobjWithName:@"豌豆射手" andLife:100 andAttack:10];
    Zombie *zb = [Zombie pvzobjWithName:@"僵尸" andLife:80 andAttack:10];
    
    Game *g = [Game new];
    [g setZombie:zb];
    [g setPLant:pee];
    
    [g start];
    return 0;
}
