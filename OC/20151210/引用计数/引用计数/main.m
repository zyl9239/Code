//
//  main.m
//  引用计数
//
//  Created by qingyun on 15/12/10.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *moumou = [Person new];  //alloc new  copy  创建对象的时候引用计数是1
    [moumou retain];//+1    2
    NSLog(@"retaincount >>>> %lu",(unsigned long)[moumou retainCount]);
    [moumou release];//-1   1
    
    [moumou retain];//+1    2
    NSLog(@"retaincount >>>> %lu",(unsigned long)[moumou retainCount]);
//    [moumou release];
    [moumou retain];//+1    3
    NSLog(@"retaincount >>>> %lu",(unsigned long)[moumou retainCount]);
    [moumou release];//-1   2

    [moumou retain];//+1    3
    NSLog(@"retaincount >>>> %lu",(unsigned long)[moumou retainCount]);
    
    for (int i = 0; i < 100; i++) {
        NSLog(@"i >>>>>> %d",i);
        [moumou run];
    }
    
    return 0;
}
