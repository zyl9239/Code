//
//  NSArray+Sort.h
//  ArraySortDemo
//
//  Created by qingyun on 15/12/17.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Sort)

- (NSArray *)sortedArrayUsingMyBlock:(NSComparator)cmptr;
@end
