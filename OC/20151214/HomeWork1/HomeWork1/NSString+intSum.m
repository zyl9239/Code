//
//  NSString+intSum.m
//  HomeWork1
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "NSString+intSum.h"

@implementation NSString (intSum)
//类方法的实现
+(int)intSum:(NSString *)str
{
    int count = 0;
    
    for (int i=0; i<str.length; i++) {
        int temp = [str characterAtIndex:i];
        if (temp >= '0' && temp <= '9') {
            count ++;
        }
    }
    return count;
}

//对象方法的实现，只需要调用类方法就可以了
-(int)intCount
{
    return [NSString intSum:self];
}

//字符串反转方法实现
+(char)flip:(NSString *)abcd
{
    NSMutableString *dcba = [[NSMutableString alloc]initWithCapacity:abcd.length];
    for (int i = abcd.length-1; i>=0; i--) {
        [dcba appendFormat:@"%c",[abcd characterAtIndex:i]];
    }
    return dcba;
}
@end
