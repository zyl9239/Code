//
//  Test.m
//  TestClass
//
//  Created by qingyun on 15/12/19.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "Test.h"

@implementation Test

-(void)foo
{
    self -> _num = 20;
}

+(instancetype)testObjWithNum:(int)num
{
    Test *t = [[Test alloc]init];
    return t;
}
@end
