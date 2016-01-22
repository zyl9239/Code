//
//  main.m
//  PersonDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYPerson.h"
#import "HNPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QYPerson *person = [[QYPerson alloc] init];
        [person setName:@"zhangsan"];
        [person setIdEntify:@"123456789"];
        [person setAge:24];
        
        NSLog(@"%@",person);
        
        person.name = @"zhaoliu";
        person.idEntify =@"123123123";
        person.age = 22;
        
        NSLog(@"name:%@,identify:%@,age:%d",person.name,person.idEntify,person.age);
        
        HNPerson *hnperson  = [[HNPerson alloc] init];
        [hnperson setName:@"lisi"];
        [hnperson setIdEntify:@"987654321"];
        [hnperson setAge:25];
        
        NSLog(@"hnperson:name:%@,identify:%@,age:%d",[hnperson name],[hnperson idEntify],[hnperson age]);
        NSLog(@"%@",hnperson);
        
        //点语法只是调用setter&getter方法的便捷方式，没有其他功能
        hnperson.name = @"wangwu";
        hnperson.idEntify = @"101101100110";
        hnperson.age = 20;
        NSLog(@"hnperson:name:%@,identify:%@,age:%d",hnperson.name,hnperson.idEntify,hnperson.age);
        
    }
    return 0;
}
