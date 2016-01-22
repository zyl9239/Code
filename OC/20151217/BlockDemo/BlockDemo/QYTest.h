//
//  QYTest.h
//  BlockDemo
//
//  Created by qingyun on 15/12/17.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^BlockType)(void);
@interface QYTest : NSObject
@property (nonatomic)int var1;
@property (nonatomic)int var2;
//代码块可以作为一个类的属性
//@property (nonatomic,strong) void (^testBlk)(void);
@property (nonatomic,strong) BlockType testBlk;

//- (id)initWithBlock:(void (^)(void))block;
- (id)initWithBlock:(BlockType)block;

- (void)run;
@end
