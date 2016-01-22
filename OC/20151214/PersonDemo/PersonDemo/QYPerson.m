//
//  QYPerson.m
//  PersonDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYPerson.h"

@implementation QYPerson

-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}

-(void)setIdEntify:(NSString *)idEntify
{
    _idEntify = idEntify;
}
-(NSString *)idEntify
{
    return _idEntify;
}

-(void)setAge:(int)age
{
    _age = age;
}
-(int)age
{
    return _age;
}

-(NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"Name:%@,IdEntify:%@,Age:%d",_name,_idEntify,_age];
    return  desc;
}

@end
