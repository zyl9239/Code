//
//  main.m
//  对象所有权
//
//  Created by qingyun on 15/12/10.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Man.h"
#import "Woman.h"

int main(int argc, const char * argv[]) {
   
    Man *jack = [Man new];
    [jack setName:@"杰克"];
    
    Woman *rose = [Woman new];
    [rose setName:@"柔丝"];
    
    [jack setWoman:rose];
    
    Woman *jurlin = [Woman new];
    [jurlin setName:@"朱丽叶"];
    
    [jack setWoman:jurlin];
    
    [jack release];
    
    [rose release];
    
    [jurlin release];
    
    return 0;
}
