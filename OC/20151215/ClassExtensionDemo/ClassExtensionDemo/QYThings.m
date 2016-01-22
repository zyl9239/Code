//
//  QYThings.m
//  ClassExtensionDemo
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYThings.h"

/*
 *类的扩展
 *1.可以添加成员变量或属性，以及写
 *
 *
 *
 *
 */

@interface QYThings ()
{
    NSInteger _thing3;
}
@end

@implementation QYThings

-(id)init
{
    if (self = [super init]) {
        _thing1 = 11;
        //下划线和点语法赋值的区别：
        //下划线是直接写内存，点语法是间接调用setter方法，如果是只读属性，不能通过点语法赋值，
        _thing2 = 22;
        _thing3 = 33;
    }
    return self;
}

@end
