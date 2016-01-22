//
//  Register.m
//  LoginDemo
//
//  Created by qingyun on 15/12/17.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "Register.h"
#import "LogIn.h"
@implementation Register

- (void)putinInfo
{
    _name = @"xiaoming";
    _pwd = @"123456";
}

- (void)toLogIn
{
    //把用户名和密码传给登陆界面
    //[self.lg setUserName:_name];
    //[self.lg setPassWord:_pwd];
    //
//    _lg.userName = _name;
//    _lg.passWord = _pwd;
    NSLog(@"注册成功，返回登陆");
    _block(_name,_pwd);
}
@end
