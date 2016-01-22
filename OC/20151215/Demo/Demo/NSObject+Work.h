//
//  NSObject+Work.h
//  Demo
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

//创建一个NSObject的类别（work）,就是创建一个非正式协议
@interface NSObject (Work)

-(void)phoneCall:(NSString *)something;
-(void)bookTicket;

@end
