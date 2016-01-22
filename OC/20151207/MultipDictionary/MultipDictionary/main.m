//
//  main.m
//  MultipDictionary
//
//  Created by qingyun on 15/12/8.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSDictionary *china = @{@"name":@"中国",
                            @"status":@{@"area":@"960万",
                                        @"pepole":@"14亿",},
                            @"province":@[
                                            @{
                                                @"name":@"北京",
                                                @"country":@[@{@"name":@"海淀"}],
                                                },
                                            @{
                                                @"name":@"河南",
                                                @"country":@[@{@"name":@"郑州"},
                                                             @{@"name":@"洛阳"}],
                                                }
                                        ]
                            
                            };
    //使用多重下标对复杂格式的数据进行访问
    NSLog(@"name >>>> %@",china[@"province"][1][@"country"][1][@"name"]);
    return 0;
}

