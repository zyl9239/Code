//
//  NSString+Length.h
//  CategoryConflictDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Length)

//Xcode6之后，如果系统类的类别里面添加的方法和类里面的方法名称相同，则新添加的方法被忽略掉。
-(NSUInteger)length;

@end
