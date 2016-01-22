//
//  main.m
//  QYPersonDemo
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYPerson.h"

int main(int argc, const char * argv[]) {
    {
        //惰性求值：先给成员变量占位，后面根据需要赋值
        QYPerson *man = [QYPerson new];
        [man setAge: 20];
        
        //开箱即用：创建对象的同时，给成员变量直接赋值，对象创建完直接就可以使用（初始化）
        QYPerson *woman = [[QYPerson alloc] init];
        NSLog(@"%@",woman);
        
        //具体调用哪个方法，是要看你能提供哪些信息或者你最关注哪些信息，不关注的信息被设置成默认值。
        QYPerson *zhangsan = [[QYPerson alloc]initWithName:@"张三"];
        NSLog(@"%@",zhangsan);
        
        QYPerson *lisi = [[QYPerson alloc]initWithName:@"李四" andIdentify:@"4110..."];
        NSLog(@"%@",lisi);
        
        QYPerson *wangwu = [[QYPerson alloc]initWithName:@"王五" andIdentify:@"1 234567" andAge:24];
        //初始化只是设置与生俱来的信息，后续想更改，可以修改对应的信息（只要有对应的接口）；
        [wangwu setName:@"钻石王老五"];
        NSLog(@"%@",wangwu);
    }
    return 0;
}
