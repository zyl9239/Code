//
//  Register.h
//  LoginDemo
//
//  Created by qingyun on 15/12/17.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LogIn;
typedef void (^BlockType)(NSString *str1,NSString *str2);
@interface Register : NSObject
@property (nonatomic,strong)NSString *name;
@property (nonatomic,strong)NSString *pwd;
@property (nonatomic,strong)BlockType block;
//@property (nonatomic,strong)LogIn *lg;

- (void)putinInfo;
- (void)toLogIn;



@end
