//
//  main.m
//  QYCar
//
//  Created by qingyun on 15/12/12.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYCar.h"
#import "QYTire.h"
#import "QYAllWeatherTire.h"

int main(int argc, const char * argv[]) {
    {
        QYCar *myFirstCar = [[QYCar alloc]init];
//        NSLog(@"%@",myFirstCar);
        
        QYTire *tire1 = [[QYTire alloc] init];
        [myFirstCar setTire:tire1 atIndex:kLeftFrontTire];
        QYTire *tire2 = [[QYTire alloc]initWithPressure:282];
        [myFirstCar setTire:tire2 atIndex:kLeftBackTire];
        QYTire *tire3 = [[QYTire alloc]initWithTreadDepth:2.2];
        [myFirstCar setTire: tire3 atIndex:kRightFrontTire];
        QYTire *tire4 = [[QYTire alloc] initWithPressure:285 andTreadDepth:2.0];
        [myFirstCar setTire:tire4 atIndex:kRightBackTier];
        
//        NSLog(@"%@",myFirstCar);
        
        
        QYAllWeatherTire *allWeatherTire1 = [[QYAllWeatherTire alloc] initWithRainHanding:24.4 andSnowHanding:20.5];
        [myFirstCar setTire:allWeatherTire1 atIndex:kLeftFrontTire];
        QYAllWeatherTire *allWeatherTire2 = [[QYAllWeatherTire alloc] initWithRainHanding:24.4 andSnowHanding:20.5];
        [myFirstCar setTire:allWeatherTire2 atIndex:kLeftBackTire];
        QYAllWeatherTire *allWeatherTire3 = [[QYAllWeatherTire alloc] initWithRainHanding:24.4 andSnowHanding:20.5];
        [myFirstCar setTire:allWeatherTire3 atIndex:kRightFrontTire];
        QYAllWeatherTire *allWeatherTire4 = [[QYAllWeatherTire alloc] initWithRainHanding:24.4 andSnowHanding:20.5];
        [myFirstCar setTire:allWeatherTire4 atIndex:kRightBackTier];
        
        NSLog(@"%@",myFirstCar);
    }
    return 0;
}