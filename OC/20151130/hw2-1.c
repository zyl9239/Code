#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(void)
{
    char c;
    short s;
    int d;
    long l;
    long long ll;
    float f;
    double dd;
    char *p = "hello,world!\n";// p 是一个字符型的指针，指向常量区"hello,world"这个字符串的首地址，也就是'h'的地址
    char p1[20] = "hello,world!\n";
    int *p2;
    float *p3;
    char arr1[10] = "hello";
    int arr2[20];
    char *arr3[30];//指针数组，数组的每个元素都是字符型的指针

    printf("char c 占%lu个字节\n",sizeof(c));
    printf("short s 占%lu个字节\n",sizeof(s));
    printf("int d 占%lu个字节\n",sizeof(d));
    printf("long l 占%lu个字节\n",sizeof(l));
    printf("long long ll 占%lu个字节\n",sizeof(ll));
    printf("float f 占%lu个字节\n",sizeof(f));
    printf("double dd 占%lu个字节\n",sizeof(dd));
    printf("char *p 占%lu个字节\n",sizeof(p));
    printf("char p1[20] 占%lu个字节\n",sizeof(p1));
    printf("int *p2 占%lu个字节\n",sizeof(p2));
    printf("float *p3 占%lu个字节\n",sizeof(p3));
    printf("char arr1[10] 占%lu个字节\n",sizeof(arr1));
    printf("int arr2[20] 占%lu个字节\n",sizeof(arr2));
    printf("char *arr3[30] 占%lu个字节\n",sizeof(arr3));

    return 0;
}

//%lu 与 %ld 区别
//%lu 无符号整型
//%ld 有符号整形
