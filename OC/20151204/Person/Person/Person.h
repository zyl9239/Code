//
//  Person.h
//  Person
//
//  Created by qingyun on 15/12/4.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    NSString *_name;
    char *_interesting[5];
}

-(void)setAge:(int)age;
-(int)age;

-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setInteresting:(char *)interest atIndex:(int)index;
-(char *)interest;
@end
