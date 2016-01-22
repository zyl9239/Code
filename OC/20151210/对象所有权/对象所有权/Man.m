//
//  Person.m
//  对象所有权
//
//  Created by qingyun on 15/12/10.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "Man.h"

@implementation Man

-(void)setName:(NSString *)name
{
    _name = name;
}

-(void)setWoman:(Woman *)woman
{
    if(_girl != woman){
        [_girl release];
        _girl = [woman retain];
    }
}

-(NSString *)description
{
    return _name;
}

-(void)dealloc
{
    NSLog(@"I(%@) jump ......and u?",_name);
    [_girl release];
    [super dealloc];
}

@end
