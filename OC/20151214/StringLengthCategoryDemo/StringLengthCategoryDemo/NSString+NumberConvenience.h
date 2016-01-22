//
//  NSString+NumberConvenience.h
//  StringLengthCategoryDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

//为NSString类添加一个类别，类别名称是NumberConvenience
@interface NSString (NumberConvenience)

//为NSString类添加一个新的实例方法
-(NSNumber *)lengthAsNumber;

@end
