//
//  QYPerson.h
//  CategorySeparateDemo
//
//  Created by qingyun on 15/12/14.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYStudent : NSObject


@end
@interface QYStudent (Add)
-(void)addStudent;
@end

@interface QYStudent (Del)
-(void)delStudent;
@end

@interface QYStudent (Edit)
-(void)editStudent;
@end
@interface QYStudent (Search)
-(void)searchStudent;
@end
