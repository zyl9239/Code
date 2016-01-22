//
//  Person.h
//  复合
//
//  Created by qingyun on 15/12/5.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString * _name;
}
-(void)setName:(NSString *)name;
-(NSString *)name;
@end
