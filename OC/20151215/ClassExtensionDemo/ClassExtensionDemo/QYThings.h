//
//  QYThings.h
//  ClassExtensionDemo
//
//  Created by qingyun on 15/12/15.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYThings : NSObject

@property (nonatomic)NSInteger thing1;
@property (nonatomic,readonly)NSInteger thing2;

-(void)resetAllValue;

//添加的成员变量虽然是私有的，但是只要我们提供了setter&getter方法的接口，在就可以对此成员变量进行读写
//但是一般不会

@end
