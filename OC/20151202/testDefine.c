#include <stdio.h>
#include <string.h>
#define NAME "qingyun"//NAME就叫宏名，后面的字符串是宏展开时要用的字符串
#define N 30
#define NUM N*10
#define ABS(x) x>=0?x:(-x)//x是形参
#define AREA(x,y) printf("长:"#x",宽："#y",面积：%d\n",x*y);
int main(void)
{
    char str[N];
    int arr[NUM];
    printf("%s\n",NAME);

    printf("%s\n","NAME");
    strcpy(str,NAME);

    int var = -3;
    printf("var的绝对值是：%d\n",ABS(var));
    
    AREA(3,5)
    return 0;
}
