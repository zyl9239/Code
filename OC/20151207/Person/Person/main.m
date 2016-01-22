//
//  main.m
//  Person
//
//  Created by qingyun on 15/12/7.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

typedef struct {
    int age;
    float height;
    char name[10];
}StudentSrc;

int main(int argc, const char * argv[]) {
    
    //结构体变量
    StudentSrc st1;
    st1.age = 24;
    st1.height = 1.75;
    strcpy("张煜林", st1.name);
    
    //字典
    NSDictionary *st2 = @{@"name":@"王峰",@"age":@"20",@"height":@"1.82"};
    
    //对象
    Student *st3 = [Student new];
    
    return 0;
}
