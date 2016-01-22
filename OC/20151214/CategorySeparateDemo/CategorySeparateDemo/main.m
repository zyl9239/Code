//
//  main.m
//  CategorySeparateDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        QYStudent *stu = [[QYStudent alloc]init];
        
        [stu addStudent];
        [stu delStudent];
        [stu editStudent];
        [stu searchStudent];
    }
    return 0;
}
