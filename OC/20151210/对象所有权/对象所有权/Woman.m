//
//  Woman.m
//  对象所有权
//
//  Created by qingyun on 15/12/10.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "Woman.h"

@implementation Woman

-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}

-(void)dealloc
{
    NSLog(@"%@ jump...",_name);
    [super dealloc];
}

@end
