//
//  QYPerson+Money.h
//  PrivateAPIDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYPerson.h"

@interface QYPerson (Money)

//通过类别创建私有API的前向声明，前提是你必须知道方法的原型（返回值类型、方法名字、方法参数）
-(void)tellMeYouMoney;

@end
