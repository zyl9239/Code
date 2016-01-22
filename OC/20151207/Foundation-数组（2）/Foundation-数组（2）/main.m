//
//  main.m
//  Foundation-数组（2）
//
//  Created by qingyun on 15/12/7.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Engine.h"
#import "Tire.h"

int main(int argc, const char * argv[]) {
    
    Car *aoto = [Car new];
    Engine *eg = [Engine new];
    [eg setPower:175];
    
    Tire *t1 = [Tire new];
    [t1 setBrand:@"米其林"];
    Tire *t2 = [Tire new];
    [t2 setBrand:@"朝阳"];
    Tire *t3 = [Tire new];
    [t3 setBrand:@"固特异"];
    Tire *t4 = [Tire new];
    [t4 setBrand:@"普利司通"];
    
    [aoto setEngine:eg];
    [aoto setTire:t1 atIndex:0];
    [aoto setTire:t2 atIndex:1];
    
    NSString *name = [NSString stringWithFormat:@"铃木:%@",@"奥拓"];
    [aoto setName:name];
    
    
    //当对象作为类的成员变量时，在使用之前，需要先创建对象
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:4];
    [aoto setTires:arr];
    [[aoto tires] addObject:t2];
    [[aoto tires] addObject:t1];
    [[aoto tires] addObject:t3];
    [[aoto tires] addObject:t4];
    
    NSLog(@"tires >>>> %@",[aoto tires]);
    
    
    
    return 0;
}
