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
    char *p = "hello,world!\n";
    char p1[20] = "hello,world!\n";
    int *p2;
    float *p3;
    char arr1[10] = "hello";
    int arr2[20];
    char *arr3[30];

    printf("char c 占%ld个字节\n",sizeof(c));
    printf("short s 占%ld个字节\n",sizeof(s));
    printf("int d 占%ld个字节\n",sizeof(d));
    printf("long l 占%ld个字节\n",sizeof(l));
    printf("long long ll 占%ld个字节\n",sizeof(ll));
    printf("float f 占%ld个字节\n",sizeof(f));
    printf("double dd 占%ld个字节\n",sizeof(dd));
    printf("char *p 占%ld个字节\n",sizeof(p));
    printf("char p1[20] 占%ld个字节\n",sizeof(p1));
    printf("int *p2 占%ld个字节\n",sizeof(p2));
    printf("float *p3 占%ld个字节\n",sizeof(p3));
    printf("char arr1[10] 占%ld个字节\n",sizeof(arr1));
    printf("int arr2[20] 占%ld个字节\n",sizeof(arr2));
    printf("char *arr3[30] 占%ld个字节\n",sizeof(arr3));

    return 0;
}
