//
//  QYPerson.m
//  QYPersonDemo
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYPerson.h"

@implementation QYPerson

#pragma mark - 初始化方法

-(id)init//重写父类(NSObject)的init方法
{
    //首先确保父类的初始化成功，然后继续初始化自身的扩展的成员变量
//    if (self = [super init]) {
//        _name = @"baobao";
//        _identify = @"110xxxx...";
//        _age = 18;
//    }
//    return self;
    return [self initWithName:nil andIdentify:nil andAge:0];
}

-(id)initWithName:(NSString *)name
{
//    self = [super init];//首先初始化父类里面的成员变量，把父类的init方法的返回值接收过来，覆盖self.之后判断self是不是nil(因为父类初始化失败会返回nil)。如果是nil，则没有必要继续初始化子类的成员变量了。
//    if (self != nil) {
//        <#statements#>
//    }
//    if (self = [super init]) {
//        _name = name;
//    }
//    return self;
    return [self initWithName:name andIdentify:nil andAge:0];
}

-(id)initWithIdentify:(NSString *)identify
{
//    if (self = [super init]) {
//        _identify  = identify;
//    }
//    return self;
    return [self initWithName:nil andIdentify:identify andAge:0];
}

-(id)initWithAge:(int)age
{
//    if (self = [super init]) {
//        _age = age;
//    }
//    return self;
    return [self initWithName:nil andIdentify:nil andAge:age];
}

-(id)initWithName:(NSString *)name andAge:(int)age
{
//    if (self = [super init]) {
//        _name = name;
//        _age = age;
//    }
//    return self;
    return [self initWithName:name andIdentify:nil andAge:age];
}

-(id)initWithName:(NSString *)name andIdentify:(NSString *)identify
{
//    if (self = [super init]) {
//        _name = name;
//        _identify = identify;
//    }
//    return self;
    return [self initWithName:name andIdentify:identify andAge:0];
}

-(id)initWithIdentify:(NSString *)identify andAge:(int)age
{
//    if (self = [super init]) {
//        _identify = identify;
//        _age = age;
//    }
//    return self;
    return  [self initWithName:nil andIdentify:identify andAge:age];
}
//指定初始化方法：里面一定要调用超类的指定初始化方法
-(id)initWithName:(NSString *)name andIdentify:(NSString *)identify andAge:(int)age
{
    if (self = [super init]) {
        _name = name;
        _identify = identify;
        _age = age;
    }
    return self;
}

#pragma mark - setter&getter方法

-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}

-(void)setIdentify:(NSString *)identify
{
    _identify  = identify;
}
-(NSString *)identify
{
    return _identify;
}

-(void)setAge:(int)age
{
    _age = age;
}
-(int)age
{
    return _age;
}

-(NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"姓名：%@,身份证号：%@,年龄：%d",_name,_identify,_age];
    return desc;
}
@end
