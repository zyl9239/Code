//
//  QYStudent.m
//  ArraySortDemo
//
//  Created by qingyun on 15/12/17.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYStudent.h"

@implementation QYStudent

- (id)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [super init]) {
        _name = name;
        _age = age;
    }
    return self;
}

- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"_name:%@,_age:%d",_name,_age];
    return desc;
}
@end
