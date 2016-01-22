//
//  QYPerson.h
//  PrivateAPIDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYPerson : NSObject

@property (nonatomic,strong)NSString *name;
@property (nonatomic)int age;

-(id)initWithName:(NSString *)name andAge:(int)age;

-(void)tellMeYouName;

@end
