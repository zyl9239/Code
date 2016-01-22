//
//  NSArray+Sort.m
//  ArraySortDemo
//
//  Created by qingyun on 15/12/17.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "NSArray+Sort.h"

@implementation NSArray (Sort)

- (NSArray *)sortedArrayUsingMyBlock:(NSComparator)cmptr
{
    //1. 创建一个可变数组（拷贝自身）
    NSMutableArray *mArr = [self mutableCopy];
    
    
    //2.冒泡排序算法:按升序排列
    for (int i = 0; i < [self count] - 1; i++) {
        for (int j = 0; j < [self count] - 1 - i; j++) {
            //使用当前传进来的参数（代码块变量cmptr），判断此代码块的返回值，如果是降序，则交换j和j+1索引处的两个对象
            NSComparisonResult result = cmptr([mArr objectAtIndex:j],[mArr objectAtIndex:j+1]);
            if (result == NSOrderedAscending) {
                [mArr exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
    return (NSArray *)mArr;
}
@end
