//
//  PVZObject.h
//  植物大战僵尸
//
//  Created by qingyun on 15/12/5.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PVZObject : NSObject
{
    NSString *_name;
    int _life;
    int _attack;
}

+(instancetype)pvzobjWithName:(NSString *)name andLife:(int)Life andAttack:(int)attack;

-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setLife:(int)life;
-(int)life;

-(void)setAttack:(int)attack;
-(int)attack;
@end
