//
//  main.m
//  Foundation-NSSet
//
//  Created by qingyun on 15/12/7.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSArray *arr = @[@"zongkai",@"mengjie",@"zongkai"];
    NSLog(@"arr >>>> %@",arr);
    
    //不重复、无序的集合
    //1.数组和集合的转换
    NSSet *set = [NSSet setWithArray:arr];
    NSArray *arr1 = [set allObjects];
    NSLog(@"arr1 >>>> %@, %@",arr1,arr1[1]);
    
    NSLog(@"set >>>> %@",set);
    
    //2.遍历
    for (NSString *str in set) {
        NSLog(@"str >>>> %@",str);
    }
    
    
    //3.其他用法
    NSSet *set1 = [NSSet setWithObjects:@"erlong",@"lifeng",@"yanzhen",@"mingming",@"xupeng", nil];
    if ([set intersectsSet:set1]) {
        NSLog(@"YES");
    }
    
//    -[(BOOL)intersectsSet:(NSSet *)otherSet];是否交叉
//    -（BOOL)isEqualToSet:(NSSet *)otherSet;是否一样
//    -（BOOL)isSubsetOfSet:(NSSet *)otherSet;是否包含

    //拼接，不管什么方式，拼接之后的集合元素还是不重复的
//    -[(NSSet *)setByAddingObject:(id)anObject NS_AVAILABLE(10_5, 2_0)];
//    -[(NSSet *)setByAddingObjectsFromSet:(NSSet *)other NS_AVAILABLE(10_5, 2_0)];
//    -[(NSSet *)setByAddingObjectsFromArray:(NSArray *)other NS_AVAILABLE(10_5, 2_0)];
    
    /*--------------可变的集合NSMutableSet---------------*/
    NSMutableSet *mtSet = [NSMutableSet setWithSet:set];
    [mtSet addObject:@"yulin"];
    
    NSLog(@"mtSet >>>> %@ set1 >>>> %@",mtSet,set1);
    
    //交集
//    [mtSet intersectSet:set1];
    
    //补集
//    [mtSet minusSet:set1];
    
    //并集
//    [mtSet unionSet:set1];
    
    //覆盖
    [mtSet setSet:set1];
    
    NSLog(@"mtset >>>> %@",mtSet);
    
    return 0;
}
