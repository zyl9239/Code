//
//  main.m
//  Foundation-字典
//
//  Created by qingyun on 15/12/7.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    /*------------------------不可变的字典--------------------------*/
    //1字典
    //字典存储的方式是 键值（key:value）, key就是键名，是一个字符串；value是一个对象
    NSDictionary *dict = @{@"name":@"Poppei",
                           @"age":@"30",
                           @"company":@"青云信息技术有限公司"};//2.0
    NSDictionary *dict1 = [NSDictionary dictionaryWithObjectsAndKeys:@"name",@"Drayo",@"age",@"29", nil];
    //NSLog(@"dict[\"name\"] >>>> %@",dict[@"name"]);
    //NSLog(@"dict1[\"name\"] >>>> %@",dict1[@"Drayo"]);
    NSLog(@"dict >>>> %@",dict);
    
    //字典的forin
    for (NSString *key in dict) {
        NSLog(@"%@:%@",key,dict[key]);
    }
    
    //字典的枚举器
    NSEnumerator *enumrator = [dict keyEnumerator];
    NSString *key1;
    NSLog(@">>>>>>>>>>>>>>>>>>>>>");
    while (key1 = [enumrator nextObject]) {
        NSLog(@"%@:%@",key1,dict[key1]);
    }
    
    /*--------------------------可变的字典--------------------------*/
    //1
    NSMutableDictionary *mtdict = [NSMutableDictionary dictionaryWithDictionary:dict1];
    
    //2如果设置的健名跟原来的健一样，就是把原来的键对应的值改掉
    // 如果键名与原来的不重复就生成新的键值对
    mtdict[@"name"] = @"jiwei";
    mtdict[@"Drayo"] = @"jiwei";
    mtdict[@"Drayo1111"] = @"jiwei";
    NSLog(@"mtdict >>>> %@",mtdict);
    
    //3删除
//    [mtdict removeAllObjects];
//    [mtdict removeObjectForKey:@"Drayo1111"];
//    NSLog(@"mtdict >>>> %@",mtdict);
    
//    [mtdict removeObjectsForKeys:@[@"Drayo",@"29"]];
    NSLog(@"mtdict >>>>> %@",mtdict);
    
    //获取所有的键
    [mtdict allKeys];
    //获取所有的值
    [mtdict allValues];
    //获取子字典
    NSDictionary *subDict = [dict dictionaryWithValuesForKeys:@[@"name",@"age"]];
    NSLog(@"subDict >>>>>> %@",subDict);
    
    return 0;
}
