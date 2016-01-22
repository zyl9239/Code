//
//  Student.h
//  Foundation-NSNumber
//
//  Created by qingyun on 15/12/8.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    int _age;
    char name[20];
}

-(void)setAge:(int)age;
-(int)age;  //Cocoa 默认以get开始的方法名字都需要至少一个初参 ，getXxxx:(void *),这是苹果工程师的习惯

@end
