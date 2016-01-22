//
//  QYPerson.m
//  PrivateAPIDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYPerson.h"

@implementation QYPerson

-(id)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [super init]) {
        _name = name;
        //self.name = name;
        self.age = age;
    }
    return self;
}

-(void)tellMeYouName
{
    NSLog(@"我叫%@",_name);
}

//没有在interface里面暴露出来的方法都是私有方法
-(void)tellMeYouMoney
{
    NSLog(@"我有五千万");
}

@end
