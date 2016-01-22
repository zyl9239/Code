//
//  NSObject+Work.m
//  Demo
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "NSObject+Work.h"

@implementation NSObject (Work)

-(void)phoneCall:(NSString *)something
{
    NSLog(@"I have told the manager the something:%@",something);
}

-(void)bookTicket
{
    NSLog(@"I have booked the ticket");
}

@end
