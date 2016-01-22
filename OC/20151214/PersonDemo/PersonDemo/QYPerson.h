//
//  QYPerson.h
//  PersonDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYPerson : NSObject

{
    NSString *_name;
    NSString *_idEntify;
    int _age;
}

-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setIdEntify:(NSString *)idEntify;
-(NSString *)idEntify;

-(void)setAge:(int)age;
-(int)age;

@end
