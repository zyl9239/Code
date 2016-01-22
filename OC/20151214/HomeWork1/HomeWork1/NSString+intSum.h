//
//  NSString+intSum.h
//  HomeWork1
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (intSum)

//对NSString类添加一个类方法，计算字符串中数字的个数，
+(int)intSum:(NSString *)str;

//对象方法的声明
-(int)intCount;

//字符串反转方法声明
+(char)flip:(NSString *)abcd;

@end
