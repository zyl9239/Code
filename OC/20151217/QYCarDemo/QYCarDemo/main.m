//
//  main.m
//  QYCarDemo
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYEngine.h"
#import "QYCar.h"
#import "QYTire.h"
#import "QYAllWeatherTire.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        QYCar *myFirstCar = [[QYCar alloc] init];
        [myFirstCar autorelease];//加到自动释放池里面
        NSLog(@"%@",myFirstCar);
        
        QYTire *tire1 = [[QYTire alloc] init];
        [myFirstCar setTire:tire1 atIndex:kLeftFrontTire];
        [tire1 autorelease];
        QYTire *tire2 = [[QYTire alloc] initWithPressure:14.4];
        [myFirstCar setTire:tire2 atIndex:kLeftBackTire];
        [tire2 autorelease];
        QYTire *tire3 = [[QYTire alloc] initWithTreadDepth:25.6];
        [myFirstCar setTire:tire3 atIndex:kRightFrontTire];
        [tire3 autorelease];
        QYTire *tire4 = [[QYTire alloc]initWithPressure:14.8 andTreadDepth:26.9];
        [myFirstCar setTire:tire4 atIndex:kRightBackTire];
        [tire4 autorelease];
        
        NSLog(@"%@",myFirstCar);
        
        QYAllWeatherTire *allWeatherTire = [[QYAllWeatherTire alloc] initWithRainHandling:24.4 andSnowHandling:34.3];
        [myFirstCar setTire:allWeatherTire atIndex:kLeftFrontTire];
        NSLog(@"%@",myFirstCar);
        
        myFirstCar.engine = [[QYEngine alloc] init];
        
        QYCar *mySecondCar = [myFirstCar copy];
        NSLog(@"%@",mySecondCar);
        
        NSLog(@"%p",myFirstCar);
        NSLog(@"%p",mySecondCar);
    }
    return 0;
}
