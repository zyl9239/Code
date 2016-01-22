//
//  main.m
//  Foundation-空值
//
//  Created by qingyun on 15/12/8.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestClass.h"

int main(int argc, const char * argv[]) {
    
    //NULL C的空指针
    char *p = NULL;
    //void 代表没有，一般用于空参数或者空返回值的表示
    void *p1;//这时void代表空类型，p1是没有类型的指针
    p1 = p;
    //null
    NSString *str;
    NSLog(@"str >>>> %@",str);
    TestClass *tc = [TestClass new];
    NSLog(@"tc >>>>> %@",tc);
    //nil 代表空对象
    NSLog(@"tc >>>> %p",tc);
    tc = nil;
    NSLog(@"tc >>>>%p",tc);
    
    
    //@0表示数值0的对象
    int a = [@0 intValue];
    NSArray *arr = @[@11,@"abc",@YES,@0];
    NSLog(@"arr >>>> %@",arr);
    
    
//    NSNull来表示还没有内容的对象  [NSNull null]
    NSMutableArray *group1 = [NSMutableArray arrayWithArray:@[[NSNull null],@"zongkai",@"mengjie",@"erlong",@"lifeng"]];
    NSLog(@"group1 >>>>>> %@",group1);
    
    NSString *st = @"Moumoumou";
    //在集合遍历的时候不能将该集合的元素改变
    NSInteger index = 0;
    for (id obj in group1) {
        if (obj == [NSNull null]) {
            index = [group1 indexOfObject:obj];
            break;
        }
    }
    group1[index] = st;
    NSLog(@"group1 >>>>>> %@",group1);
    
    return 0;
}
