//
//  QYPerson.h
//  QYPersonDemo
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYPerson : NSObject
{
    NSString *_name;
    NSString *_identify;
    int _age;
}

//遍历初始化方法;形如：initWithXxxx:(类型)var1 andYyyy:(类型)var2 ...
//我们最好要给用户提供丰富的接口，保证无论用户关注什么信息，都可以有对应的接口帮他完成工作。
//比如用户现在只想设置姓名，那就要有只设置姓名的接口来用

-(id)initWithName:(NSString *)name;
-(id)initWithIdentify:(NSString *)identify;
-(id)initWithAge:(int)age;

-(id)initWithName:(NSString *)name andIdentify:(NSString *)identify;
-(id)initWithName:(NSString *)name andAge:(int)age;
-(id)initWithIdentify:(NSString *)identify andAge:(int)age;

//指定初始化方法：一般选择参数最多的那个初始化方法
-(id)initWithName:(NSString *)name andIdentify:(NSString *)identify andAge:(int)age;

-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setIdentify:(NSString *)identify;
-(NSString *)identify;

-(void)setAge:(int)age;
-(int)age;

@end
