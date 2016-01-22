//
//  main.m
//  Demo
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "manager.h"
#import "secretary.h"
#import "NSObject+Work.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建经理
        manager *manage = [[manager alloc]init];
        //创建秘书
        secretary *secretar = [[secretary alloc]init];
        //经理委托秘书
        manage.delegate = secretar;
        //经理工作
        [manage work];
        //秘书工作
        [secretar work];
        //接电话
        [manage.delegate phoneCall:@"晚上一起吃饭吧？"];
        //订票
        [manage.delegate bookTicket];
    }
    return 0;
}
