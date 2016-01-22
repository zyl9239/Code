//
//  LogIn.m
//  LoginDemo
//
//  Created by qingyun on 15/12/17.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "LogIn.h"
#import "Register.h"
@implementation LogIn

//跳转到注册界面
- (void)toRegister
{
    NSLog(@"用户不存在，请先注册");
    Register *rgUI = [[Register alloc] init];
    
    //把要做的事情提前设计好，具体什么时候使用这个代码块，要看具体需求
    rgUI.block = ^(NSString *str1,NSString *str2){
        _userName = str1;
        _passWord = str2;
    };
    //输入个人信息
    [rgUI putinInfo];
    [rgUI toLogIn];
}
@end
