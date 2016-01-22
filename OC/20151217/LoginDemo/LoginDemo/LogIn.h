//
//  LogIn.h
//  LoginDemo
//
//  Created by qingyun on 15/12/17.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LogIn : NSObject

@property (nonatomic,strong)NSString *userName;
@property (nonatomic,strong)NSString *passWord;


- (void)toRegister;
@end
