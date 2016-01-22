//
//  Man.m
//  复合
//
//  Created by qingyun on 15/12/5.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "Man.h"

@implementation Man
-(void)setFriend:(Person *)friend
{
    _friend = friend;
}

-(void)setGirlFriend:(Woman *)girlFriend
{
    _girlFriend = girlFriend;
}
@end
