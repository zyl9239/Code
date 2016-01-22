//
//  QYPerson.m
//  NSpredicateDemo
//
//  Created by qingyun on 15/12/18.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYPerson.h"

@implementation QYPerson

-(id)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [super init]) {
        _name = name;
        _age = age;
    }
    return self;
}

-(NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"_name:<%@> , _age:<%d>",_name,_age];
    return desc;
}

@end
