//
//  QYEngine.m
//  QYCarDemo
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYEngine.h"

@implementation QYEngine

- (id)copyWithZone:(NSZone *)zone
{
    QYEngine *newEngine = [[[self class] allocWithZone:zone] init];
    
    newEngine.name = [_name name];
    return newEngine;
}

- (NSString *)description
{
    return @"发动机";
}
@end
