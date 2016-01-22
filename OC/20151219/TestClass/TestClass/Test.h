//
//  Test.h
//  TestClass
//
//  Created by qingyun on 15/12/19.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Test : NSObject

{
//    @package 在框架内访问
//    @public 公开，随处
//    @private 只能在子类本身的实现代码中访问
//    @protected 只能在父类和子类实现中访问
    int _num;
}

+(instancetype)testObjWithNum:(int)num;

@end
