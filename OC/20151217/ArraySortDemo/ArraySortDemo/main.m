//
//  main.m
//  ArraySortDemo
//
//  Created by qingyun on 15/12/17.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+Sort.h"
#import "QYStudent.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSArray *arr = @[@"adc",@"123",@"one",@"five"];
        NSLog(@"排序前：%@",arr);
//        NSArray *sortedArr = [arr sortedArrayUsingMyBlock:^NSComparisonResult(id obj1, id obj2) {
//            return [obj1 compare:obj2];
//        }];
        //系统已有的排序：按升序
        NSArray *sortedArr = [arr sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            return [obj1 compare:obj2];
        }];

        NSLog(@"排序后：%@",sortedArr);
        
        QYStudent *stu1 = [[QYStudent alloc] initWithName:@"zhangsan" andAge:20];
        QYStudent *stu2 = [[QYStudent alloc] initWithName:@"lisi" andAge:22];
        QYStudent *stu3 = [[QYStudent alloc] initWithName:@"xiaohong" andAge:19];
        QYStudent *stu4 = [[QYStudent alloc] initWithName:@"wangwu" andAge:17];
        
        NSArray *stuArr = @[stu1,stu2,stu3,stu4];
        NSLog(@"排序前：stuArr：%@",stuArr);
        //下面对学生数组排序
        //1.指定排序的规则：定义一个代码块,按年龄从大到小排序
        //代码块里面返回值要根据自己的需求来返回
        NSComparator cmptr = ^NSComparisonResult(id obj1,id obj2){
            QYStudent *stuObj1 = (QYStudent *)obj1;
            QYStudent *stuObj2 = (QYStudent *)obj2;
            if (stuObj1.age > stuObj2.age) {
                return NSOrderedAscending;
            }
            else if(stuObj1.age == stuObj2.age)
            {
                return NSOrderedSame;
            }
            else{
                return NSOrderedDescending;
            }
        };
        
        NSArray *sortedStuArr = [stuArr sortedArrayUsingMyBlock:cmptr];
        NSLog(@"排序后：sortedStuArr：%@",sortedStuArr);
    }
    return 0;
}
