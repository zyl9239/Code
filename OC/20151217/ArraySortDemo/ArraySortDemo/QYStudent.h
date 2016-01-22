//
//  QYStudent.h
//  ArraySortDemo
//
//  Created by qingyun on 15/12/17.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYStudent : NSObject

@property (nonatomic,strong)NSString *name;
@property (nonatomic)int age;

- (id)initWithName:(NSString *)name andAge:(int)age;

@end
