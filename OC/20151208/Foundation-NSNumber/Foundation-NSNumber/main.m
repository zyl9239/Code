//
//  main.m
//  Foundation-NSNumber
//
//  Created by qingyun on 15/12/8.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    NSArray *arr = @[@"ABC",@1,@3.14,@'c',@YES];//在基本数据类型前加@，数值就变成了对象，这是快速装箱。
    NSNumber *intObj = [NSNumber numberWithInt:100];
    NSNumber *floatObj = [NSNumber numberWithFloat:0.618];
    NSNumber *charObj = [NSNumber numberWithChar:'Y'];
    NSNumber *boolObj = [NSNumber numberWithBool:NO];
    NSNumber *integerObj = [NSNumber numberWithInteger:1000];
    NSDictionary *dict = @{@"int":intObj,@"float":floatObj,@"char":charObj,@"bool":boolObj,@"long":@1000000L};
    NSLog(@"arr >>>> %@",arr);
    NSLog(@"dict >>>> %@",dict);
    
    //拆箱 unboxing
    int a = [@1 intValue];
    int b = [intObj intValue];
    NSInteger c = [integerObj integerValue];
    NSLog(@"result >>>> %d, %d",a+b,[@1 intValue]+[intObj intValue]);
    NSLog(@"c >>>> %ld",(long)c);
    
    //stringValue 可以把数值对象
    NSString *integerStr = [integerObj stringValue];
    //[intObj stringValue];
    NSString *boolStr = [boolObj stringValue];
    
    NSLog(@"str1 >>> %@    str2 >>> %@",integerStr,boolStr);
    
    //把字符串内容的对象变成基本数据类型的数值也使用拆箱方法
    BOOL d = [boolStr boolValue];
    
    /*--------------------NSValue----------------------*/
    //C中的数据类型可以统称标量
    NSRect rect = NSMakeRect(10, 10, 100, 20);
    NSRange range = NSMakeRange(100, 200);
    //@encode 表示把NSRect 变成一个编码后的字符串
    NSValue *valueObj = [NSValue valueWithBytes:&rect objCType:@encode(NSRect)];
    NSValue *valueObj1 = [NSValue valueWithBytes:&range objCType:@encode(NSRange)];
    NSMutableArray *mtarr = [NSMutableArray arrayWithCapacity:2];
    [mtarr addObject:valueObj];
    [mtarr addObject:valueObj1];
    NSLog(@"mtarr >>>> %@",valueObj);
    
    //基本数值
    int aa = 88888;
    NSValue *intobj2 = [NSValue valueWithBytes:&aa objCType:@encode(int)];
    
    //自定义结构体的装箱
    typedef struct {
        int age;
        char name[10];
    }STU;
    STU student;
//    struct STU{
//        int age;
//        char name[20];
//    }student;
    
    
    student.age = 30;
    strcpy( student.name,"poppei");
    //student对象st和nsvalue的对象studentobj存储的数据内容差不多，但是是两个完全不同的两个对象
    NSValue *studentObj = [NSValue valueWithBytes:&student objCType:@encode(STU)];
    
    //C数组的装箱
    char nickname[20] = {0};
    NSValue *nickobj = [NSValue valueWithBytes:nickname objCType:@encode(char [])];
    
    
//    NSValue对象的拆箱
    STU st2;
    [studentObj getValue:&st2];//void *>>>>空类型的指针，不要说成空指针，可以代表做任意类型的C指针
    NSLog(@"age >>>> %d name >>>> %s",st2.age,st2.name);
    
    //NSValue 的对象拆箱方法统一 getValue 它的参数是将来拆箱之后保存的位置
    int bb;
    [intobj2 getValue:&bb];
    NSLog(@"bb >>>> %d",bb);
    
//    NSValue 是NSNumber的父类，所以intobj2不能调用intvalue,但是intobj能调用getvalue
    //bb = [intobj2 intValue];//intobj2 >>>NSValue intvlaue >>>> NSNumber NSNumber:NSValue
    [intObj getValue:&bb];
    NSLog(@"bb >>>> %d",bb);
    
    //NSNumber:NSValue
//    intvalue 是NSNumber的对象方法
//    intobj2 >>>> NSValue
//    intObj >>>>NSNumber
//    如果父类对象强制转换为子类对象，还是不能调用属于子类对象独有的变量，因为得到这个子类对象是不完美，很多属于子类醐的成员变量都是空值，一旦使用到这些变量和方法时，就报错
    
    NSNumber *numObj = (NSNumber *)intobj2;
    bb = [numObj intValue];
    
    
    return 0;
}
