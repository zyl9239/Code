//
//  main.m
//  QYStudent
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYStudent.h"
#import "NSObject+Dance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        QYStudent *zhangmengjie = [[QYStudent alloc]initWithName:@"张蒙杰" andAge:21];
        
        //程序运行时才能确定对象能不能执行对应的方法，如果不能响应，则返回NO,能响应则返回YES
        if ([zhangmengjie respondsToSelector:@selector(sing)]) {
            [zhangmengjie sing];
        }
        else
        {
            NSLog(@"回去学学");
        }
        //如果不确定对象能不能执行对应的方法，则可以先测试对方法的响应
        if ([zhangmengjie respondsToSelector:@selector(dance)]) {
            [zhangmengjie dance];//QYStudent继承自NSObject,所以dance方法可以被调用(因为有接口)，避免了编译器的警告。
        } else {
            NSLog(@"不会跳舞，就说相声！");
        }
    }
    return 0;
}
