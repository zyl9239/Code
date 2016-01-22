//
//  main.m
//  NSpredicateDemo
//
//  Created by qingyun on 15/12/18.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        //谓词，用来查询和过滤类似于SQL数据库中的where
        //1.创建一个谓词对象：制定筛选的规则
        
        
        //1.1创建一个NSNumber对象的数组
        NSArray *numArr = @[@111,@234,@45,@566,@960];
        
        NSLog(@"numArr >>>> %@",numArr);
        
        //创建一个谓词对象：过滤上面数组中大于100的对象
        //SELF代表被过滤的数组中的每一个对象本身。
        //支持所有关系运算符（ > 、>= 、< 、<= 、== 、!=）
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF >100"];
        NSArray *fltArr = [numArr filteredArrayUsingPredicate:predicate];
        
        NSLog(@"fltArr >>>> %@",fltArr);
        
        
        //1.2评估单个对象
        NSNumber *num = @234;
        BOOL result = [predicate evaluateWithObject:num];
        
        NSLog(@"%d",result);
        
        
        //1.3创建一个QYPerson类对象的数组
        QYPerson *person1 = [[QYPerson alloc]initWithName:@"zhangsan" andAge:20];
        QYPerson *person2 = [[QYPerson alloc]initWithName:@"lisi" andAge:21];
        QYPerson *person3 = [[QYPerson alloc]initWithName:@"wangwu" andAge:22];
        QYPerson *person4 = [[QYPerson alloc]initWithName:@"tianqi" andAge:25];
        
        NSArray *personArr = @[person1,person2,person3,person4];
        
        NSLog(@"%@",personArr);
        //谓词是基于KVC机制的，可以通过属性对应的字符串
        //支持逻辑与和逻辑或运算符（&& == AND) （|| == OR）( ! == NOT)
        //BEGINWITH(以XX开头) ENDWITH(以XX结尾) CONTAINS(包含XX)  XX是字符串
        // IN(指定离散的范围，只和{}中的值匹配)  BETWEEN(指定一个闭区间范围，{num1，num2}表示num1~num2之间的值)
        //ALL ANY施加的是集合对象
        predicate = [NSPredicate predicateWithFormat:@"age > 22 || name == 'zhangsan'"];
        NSArray *filtPersonArr = [personArr filteredArrayUsingPredicate:predicate];\
        
        NSLog(@"%@",filtPersonArr);
        
        predicate = [NSPredicate predicateWithFormat:@"ALL age >20"];
        BOOL result1 = [predicate evaluateWithObject:personArr];
        if (result1) {
            NSLog(@"所有人的年龄都大于20！");
        } else {
            NSLog(@"有不满20岁的");
        }
        
        predicate = [NSPredicate predicateWithFormat:@"ANY age >20"];
        BOOL result2 = [predicate evaluateWithObject:personArr];
        if (result2) {
            NSLog(@"至少有一个大于20！");
        } else {
            NSLog(@"所有的人都不满20岁");
        }
        
        //1.3.7 %K是key的占位符
        NSString *key = @"name";
        NSString *value = @"lisi";
        predicate = [NSPredicate predicateWithFormat:@"%K  == %@",key,value];
        NSArray *fltPersonArr3 = [personArr filteredArrayUsingPredicate:predicate];
        NSLog(@"%@",fltPersonArr3);
        
        
        //1.3.8谓词中使用变量（$NAME) $表示取出变量的值，同shell里面的环境变量的理解
        //1.3.8.1生成一个谓词模板
        NSPredicate *predicateTemplate = [NSPredicate predicateWithFormat:@"name = $NAME"];
        //1.3.8.2由谓词模板生成谓词
        //创建一个字典
        NSString *name = @"wangwu";
        NSDictionary *dict = @{@"NAME":name};
        //用字典对象中的value来替换模板中的变量，生成一个具体的谓词
        predicate = [predicateTemplate predicateWithSubstitutionVariables:dict];
        NSArray *fltPersonArr4 = [personArr filteredArrayUsingPredicate:predicate];
        NSLog(@"%@",fltPersonArr4);
        
        //年龄范围的模板
        predicateTemplate = [NSPredicate predicateWithFormat:@"age BETWEEN $RANGE"];
        NSNumber *beginAge = @20;
        NSNumber *endAge = @26;
        //此处范围涉及两个数值，所以 要把两个值加入数组里面，把数组作为RANGE的值
        dict = @{@"RANGE":@[beginAge,endAge]};
        predicate = [predicateTemplate predicateWithSubstitutionVariables:dict];
        NSArray *fltPersonArr5 = [personArr filteredArrayUsingPredicate:predicate];
        
        NSLog(@"%@",fltPersonArr5);
        
        
        //1.4谓词中使用通配符 like
        predicate = [NSPredicate predicateWithFormat:@"name like'zh*'"];
        NSArray *fltPersonArr6= [personArr filteredArrayUsingPredicate:predicate];
        NSLog(@"%@",fltPersonArr6);
        
        //1.5谓词中使用正则表达式 matches
        predicate = [NSPredicate predicateWithFormat:@"name matches '^w.*u$'"];
        NSArray *fltPersonArr7= [personArr filteredArrayUsingPredicate:predicate];
        NSLog(@"%@",fltPersonArr7);
        
    }
    return 0;
}
