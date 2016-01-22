//
//  main.m
//  BlockDemo
//
//  Created by qingyun on 15/12/17.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYTest.h"
#import "QYCar.h"
//下面是定义一种代码块类型：myType
typedef void (^myType)(void);

//全局变量
int gVar = 10;
//静态变量
static int sVar = 20;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        //代码块的用法
        
        //1.直接使用
        //代码块变量的赋值：下面myBlock就是一个代码块变量
        //void (^myBlock)(void) = ^{printf("hello,Block!\n");};
        //用已定义的代码块类型定义变量
        myType myBlock = ^{printf("hello,Block!\n");};
        //代码块的使用
        myBlock();
        
        
        
        //2.代码块的内联使用
        NSArray *arr = @[@"one",@"two",@"five"];
        NSLog(@"排序前：arr:%@",arr);
        
        //2.1 先定义一个代码块变量,并且对它赋值
        NSComparator cmpr = ^NSComparisonResult(id obj1,id obj2){
            return [obj1 compare:obj2];
        };
        //2.2把代码块变量作为方法的参数传入
        NSArray *sortedArr = [arr sortedArrayUsingComparator:cmpr];
                              
        //2.1+2.2
//        NSArray *sortedArr = [arr sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
//            return [obj1 compare:obj2];
//        }];
        NSLog(@"排序后：sortedArr:%@",sortedArr);
        
        
        //3.代码块对变量的操作特性
        //3.1 对全局变量的操作:不仅可以读取值，而且可以在代码块内部修改它的值
        void (^blkG)(void) = ^{
            printf("gVar:%d\n",gVar);
            gVar++;
            printf("gVar:%d\n",gVar);
        };
        blkG();
        
        //3.2 对静态变量的操作：不仅可以读取值，而且可以在代码块内部修改它的值

        void (^blkS)(void) = ^{
            printf("sVar:%d\n",sVar);
            sVar++;
            printf("sVar:%d\n",sVar);
        };
        blkS();
        
        //3.3 对局部变量的操作：代码块内部不能直接修改局部变量；如果要修改，需要在局部变量前加__block
        //代码块在定义时，保存的是局部变量的快照，也就是说把他当成常量看待，不能更改
        __block int var = 30;
        void (^blk)(void) = ^{
            printf("Var:%d\n",var);
            var++;
            printf("Var:%d\n",var);
        };
        blk();
        
        
        //代码块带参数
        int (^addBlk)(int x,int y) = ^int(int x,int y){
            return x+y;
        };
        
        int result = addBlk(3,5);
        NSLog(@"result:%d",result);
        
        //⚠️⚠️：对于局部变量来说，代码块定义时，它的值是多少就是多少。在定义和使用代码块中间所做的修改不会影响代码块内部的变量的值
        int var1 = 30;
        //代码块变量的定义
        void (^blk1)(void) = ^{
            printf("Var1:%d\n",var1);
            printf("gVar:%d\n",gVar);
        };
        
        var1 += 10;
        gVar += 100;
        //代码块的使用
        blk1();
        
        //3.4对一个类的成员变量的操作：代码块可以修改类的成员变量，因为类的成员变量在类的实现文件中相当于全局变量
        QYTest *test = [[QYTest alloc] init];
        test.var1 = 10;
        test.var2 = 20;
        [test run];
        
        //3.5对对象指针变量的操作：指针的指向不能改变，但它指向的内容可以改变
        QYCar *car = [[QYCar alloc] init];
        car.price = 200000;
        void (^changePrice)(void) = ^{
            //虽然car的指向不能改变，但是可以通过car指针来改变它指向的那块内存里面的内容
            car.price = 300000;
            //car本身是局部变量，因为他是指针，也就是说它的指向不能改变
            //car = [[QYCar alloc] init];
        };
        NSLog(@"%.1f",car.price);
        changePrice();
        NSLog(@"%.1f",car.price);
        
        //自定义一种代码块的内联用法:把代码块作为方法的参数
        QYTest *test1 = [[QYTest alloc] initWithBlock:^{
            NSLog(@"今天天气真好啊。。。");
            if (1) {
                NSLog(@"hello,test!");
            }
        }];
        
        [test1 run];
    }
    return 0;
}
