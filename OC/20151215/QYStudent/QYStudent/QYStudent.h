//
//  QYStudent.h
//  QYStudent
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYStudent : NSObject
@property (nonatomic,strong)NSString *name;
@property (nonatomic)int age;

-(id)initWithName:(NSString *)name andAge:(int)age;

-(void)sing;

@end
