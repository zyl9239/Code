//
//  QYStudent.m
//  QYStudent
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "QYStudent.h"

@implementation QYStudent
-(id)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [super init]) {
        _name = name;
        _age = age;
    }
    return self;
}

-(void)sing
{
    
    NSLog(@"我爱唱歌！");
}
@end
