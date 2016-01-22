#include <stdio.h>

int main(void)
{
    char *p;//声明一个字符指针
    char arr[10] = "world!";//定义一个字符数组，共有10个元素，每个元素都是char类型
    //相当于：
    //char arr[10] = {'w','o','r','l','d','!','\0'};

    //不可以这么写:
    //char arr1[10];
    //arr1 = "world!";//因为arr1是指针常量，不能修改其指向

    char *pArr[10] = {"西瓜","苹果","桔子"};//定义一个字符指针数组，共有10个元素，每个元素都是char *类型

    p = "hello";//p指向常量区里面的字符串常量"hello"的第一个字符'h',也可以说p指向"hello"的首地址
    p = &arr[5];//p此时就指向arr数组的第5个元素
    printf("&arr[5]>>>>>>>%p\n",&arr[5]);

    *p = 'x';//此时就是给arr[5]赋值为'x'
    printf("p>>>>>>%p\n",p);
    char **q = &p;//q是一个指针变量，指向一个char *类型的变量，*q表示p变量的存储的值（也就是p指向的那个地址）
    printf("*q>>>>>>>>>%p\n",*q);//q == &p;*q == *(&p);*q == p;
    printf("&p>>>>>>>>>%p\n",&p);
    printf("q>>>>>>>>>%p\n",q);
    q++;
    printf("q++>>>>>>>>>%p\n",q);


    printf("%c\n",*p);
    pArr[3] = "qingyun";//pArr[3]就是字符指针，指向"qingyun"的第一个字符'q'
    
    for(int i=0;i<4;i++)
    {
        printf("%s\n",pArr[i]);
    }

    return 0;
}
