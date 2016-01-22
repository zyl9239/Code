//
//  Man.h
//  复合
//
//  Created by qingyun on 15/12/5.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "Person.h"
#import "Woman.h"
@interface Man : Person
{
    //复合用来描述类与类另外一种关系：横向的拥有关系
    //在代码上的体现就是使用类类型的成员变量
    Person *_friend;
    Woman *_girlFriend;
}

-(void)setFriend:(Person *)friend;
-(void)setGirlFriend:(Woman *)girlFriend;
@end
