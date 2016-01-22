//
//  HNPerson.m
//  PersonDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "HNPerson.h"

@implementation HNPerson

//Xcode4.5之后，@synthesize都可以省略不写，@property会同时创建声明与实现
//@synthesize name;
//@synthesize idEntify;
//@synthesize age;

//-(void)setName:(NSString *)name
//{
//    _name = name;
//}
//-(NSString *)name
//{
//    return _name;
//}
//
//-(void)setIdEntify:(NSString *)idEntify
//{
//    _idEntify = idEntify;
//}
//-(NSString *)inEntify
//{
//    return _idEntify;
//}
//
//-(void)setAge:(int)age
//{
//    _age = age;
//}
//-(int)age
//{
//    return _age;
//}

-(NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"Name:%@,IdEntify:%@,Age:%d",_name,_idEntify,_age];
    return  desc;
}


@end
