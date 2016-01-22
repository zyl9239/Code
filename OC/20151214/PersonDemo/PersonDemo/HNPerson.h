//
//  HNPerson.h
//  PersonDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HNPerson : NSObject

//{
//    NSString *_name;
//    NSString *_idEntify;
//    int _age;
//}

//属性的声明，会自动创建成员变量（下划线加属性的名字），以及对应的setter&getter方法的声明
@property NSString *name;
@property NSString *idEntify;
@property int age;

//-(void)setName:(NSString *)name;
//-(NSString *)name;
//
//-(void)setIdEntify:(NSString *)idEntify;
//-(NSString *)inEntify;
//
//-(void)setAge:(int)age;
//-(int)age;

@end
