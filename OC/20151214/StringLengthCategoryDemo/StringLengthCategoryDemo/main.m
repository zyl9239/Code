//
//  main.m
//  StringLengthCategoryDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.创建可变数组，用于存放字符串的长度
        NSMutableArray *lenArr = [NSMutableArray array];
        //2.创建三个字符串对象
        NSString *str1 = @"Hello,qingyun!";
        NSString *str2 = @"Hello,students!";
        NSString *str3 = [NSString stringWithFormat:@"my name is zhang%d",3];
        //3.分别求出三个字符串的长度
        NSUInteger len1 = [str1 length];
        NSUInteger len2 = [str2 length];
        NSUInteger len3 = [str3 length];
//        //4.分别装箱：基本数据类型转换为OC对象类型
//        NSNumber *lenNum1 = [NSNumber numberWithUnsignedLong:len1];
//        NSNumber *lenNum2 = [NSNumber numberWithUnsignedLong:len2];
//        NSNumber *lenNum3 = [NSNumber numberWithUnsignedLong:len3];
        //4.快速装箱
        NSNumber *lenNum1 = @(len1);
        NSNumber *lenNum2 = @(len2);
        NSNumber *lenNum3 = @(len3);
        //5.添加到数组里面
        [lenArr addObject:lenNum1];
        [lenArr addObject:lenNum2];
        [lenArr addObject:lenNum3];
        
    }
    return 0;
}
