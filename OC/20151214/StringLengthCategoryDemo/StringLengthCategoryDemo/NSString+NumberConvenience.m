//
//  NSString+NumberConvenience.m
//  StringLengthCategoryDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "NSString+NumberConvenience.h"

@implementation NSString (NumberConvenience)

-(NSNumber *)lengthAsNumber
{
    NSUInteger len = [self length];
    NSNumber *lenNum = [NSNumber numberWithUnsignedInteger:len];
    return lenNum;
}

@end
