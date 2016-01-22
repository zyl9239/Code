//
//  QYTest.m
//  BlockDemo
//
//  Created by qingyun on 15/12/17.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYTest.h"

@implementation QYTest

- (id)initWithBlock:(BlockType)block
{
    if (self = [super init]) {
        _testBlk = block;
    }
    return self;
}
- (void)run
{
    void (^blk)(void) = ^{
        NSLog(@"修改前：_var1:%d,_var2:%d",_var1,_var2);
        _var1++;
        _var2++;
        NSLog(@"修改后：_var1:%d,_var2:%d",_var1,_var2);
    };
               
    blk();
    
    _testBlk();
}
@end
