//
//  Person.m
//  Person
//
//  Created by qingyun on 15/12/4.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setAge:(int)age
{
    _age = age;
}
-(int)age
{
    return _age;
}

-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}

-(void)setInteresting:(char *)interest atIndex:(int)index
{
    
}
-(char *)interest
{
    return _interesting;
}
@end
