//
//  main.m
//  Foundation-数组
//
//  Created by qingyun on 15/12/7.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    /*---------------------不可变数组 NSArray--------------------*/
    //1数组对象
    NSArray *arr0 = @[@"xiafei",@"wanghai",@"haibo",@"xiaoyu",@"李靖",[NSObject new]];
    //id代表所有的对象类型
    NSArray *arr1 = [NSArray arrayWithObjects:@"gengbiao",
                     [NSString stringWithFormat:@"fan%@",@"licong"],
                     [NSObject new],
                     nil];
    NSLog(@"arr0 >>>> %@",arr0);
    NSLog(@"arr1 >>>> %@",arr1);
    
    //OC中的数组只能存储对象
    //NSArray *arr2 = @[1,"maping",'c'];
    
    //2访问数组
    NSLog(@"arr0[1] >>>>> %@",arr0[1]);
    NSLog(@"arr0 >>>>>>>> %@",arr0);
    
    //3遍历数组
    //[arr0 count] 获取数组的长度
    //3.1
    for (int i = 0; i<[arr0 count]; i++){
        NSLog(@"arr0[%d] >>>> %@",i,arr0[i]);
    }
    //3.2枚举（动词）器
    
    NSEnumerator *enumrator = [arr0 objectEnumerator];
    id obj;
    while ((obj = [enumrator nextObject]) != nil) {
        NSLog(@"obj >>>>> %@", obj);
    }
//    NSLog(@"next >>>> %@",[enumrator nextObject]);
//    NSLog(@"next >>>> %@",[enumrator nextObject]);
//    NSLog(@"next >>>> %@",[enumrator nextObject]);
//    NSLog(@"next >>>> %@",[enumrator nextObject]);
//    NSLog(@"next >>>> %@",[enumrator nextObject]);
    
    //3.3快速枚举
    //for (对象类型 临时变量 in 数组){    }
    for (id obj in arr0) {
        NSLog(@"next >>>> %@",obj);
    }
    
    //4 其他的访问元素的方式
    NSLog(@"arr0[2] >>>> %@",[arr0 objectAtIndex:2]);
    NSLog(@"first >>>>> %@",[arr0 firstObject]);
    NSLog(@"last >>>> %@",[arr0 lastObject]);
    
    NSLog(@"arr0[last] >>>> %@",[arr0 objectAtIndex:[arr0 count]-1]);
    
    //5数组内容检查
    if ([arr0 containsObject:@"李靖"]) {
        NSLog(@"yes");
    }
    NSArray *arr2 = [NSArray arrayWithObjects:@"xiafei",@"wanghai",@"haibo",@"xiaoyu",@"李靖", nil];
    if ([arr0 isEqualToArray:arr2]) {
        NSLog(@"一样的数组");
    } else {
        NSLog(@"不一样的数组");
    }
    
    
    //6截取子数组
    NSLog(@"subarray >>>>> %@",[arr0 subarrayWithRange:NSMakeRange(1,2)]);
    
    //7字符串分割成数组
    NSString *names = @"weiyachao,wangzhenzhen,zhaowenbo,simingyang";
    NSArray *nameArr = [names componentsSeparatedByString:@","];
    NSLog(@"nameArr >>>>>> %@",nameArr);
    NSString *names1 = [nameArr componentsJoinedByString:@"❤️"];
    NSLog(@"names1 >>>>>> %@",names1);
    
    //8连接
    NSArray *unionArray = [nameArr arrayByAddingObjectsFromArray:arr0];
    NSLog(@"union >>>> %@",unionArray);
    
    
    /*------------------------可变数组NSMutableArray------------------------*/
    
    //1创建可变数组
    NSArray *arr3 = @[@"xiafei",@"wanghai",@"haibo",@"xiaoyu",@"李靖"];
    NSMutableArray *mtArr = [NSMutableArray arrayWithArray:arr3];
    NSMutableArray *mtArr1 = [NSMutableArray arrayWithCapacity:10];//使用默认容量来创建可变数组，给定的容量是该数组最优的长度限制，超出该限度数组依然可以添加元素，但是性能会降低
    
    //2追加
    [mtArr addObject:@"李天王"];
    
    return 0;
}
