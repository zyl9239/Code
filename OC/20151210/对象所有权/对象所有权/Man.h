//
//  Person.h
//  对象所有权
//
//  Created by qingyun on 15/12/10.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Woman;

@interface Man : NSObject

{
    NSString *_name;
    Woman *_girl;
}

-(void)setName:(NSString *)name;
-(void)setWoman:(Woman *)woman;

@end
