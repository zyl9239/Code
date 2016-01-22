#include <stdio.h>

int main(void)
{
    //printf()用途是打印文字内容
    printf("hello world!\n");
    printf("hello world!\n");

    //%d是格式化输出
    printf("我今年%d岁了，我工作%d年了。\n",24,2);
    printf("10+10=%d\n",10+10);

    int a;
    int b;
    //a,b是变量，可以存储一些固定类型的数值
    //a = 555;
    //b = 885;
    //printf("%d+%d=%d\n",a,b,a+b);

    printf("请输入要计算的数值：\n");
    scanf("%d",&a);
    scanf("%d",&b);
    printf("%d+%d=%d\n",a,b,a+b);

    return 0;
}
