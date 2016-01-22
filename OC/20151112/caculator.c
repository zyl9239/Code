#include <stdio.h>
#include "my.h" //自己的头文件需要用引号引起来
// 如果函数不是在同一个文件，不是在调用之前实现的，都需要先声明

int main(void)
{
    int a;
    int b;
    printf("=====================\n");
    printf("========计算器=======\n");
    printf("=====================\n");
    printf("请输入第一个数值:\n");
    scanf("%d", &a);
    printf("请输入第二个数值:\n");
    scanf("%d", &b);
    
    printf("计算结果如下:\n");
    printf("加法:%d+%d=%d\n", a, b, add(a,b));
    printf("减法:%d-%d=%d\n", a, b, sub(a,b));
    printf("乘法:%d*%d=%d\n", a, b, mul(a,b));
    printf("除法:%d/%d=%d\n", a, b, dis(a,b));

    printf("欢迎下次使用，退出中....\n");

    return 0;
}
