#include<stdio.h>

void foo(void)
{
    printf("kaifan……");
}

int add(int a, int b)
{
    printf("%d+%d=%d\n",a,b,a+b);
    printf("==============\n");
    return 0;
}

int dec(int a, int b)
{
    printf("%d-%d=%d\n",a,b,a-b);
    printf("==============\n");
    return 0;
}
int mult(int a, int b)
{
    printf("%d*%d=%d\n",a,b,a*b);
    printf("==============\n");
    return 0;
}
int chu(int a, int b)
{
    printf("%d/%d=%d\n",a,b,a/b);
    printf("==============\n");
    return 0;
}

int main(void)
{
    //printf 就是输出文字内容
    //\n 的意思就是换行
    //%s 为文字内容占位
    //%d 为整数占位
    printf("欢迎大家！\n");
    printf("欢迎%s %d!\n","张煜林",20151111);
    
    foo();

    printf("计算10和5的和：\n") ;
    printf("10+5=%d\n",10+5);
    printf("计算10和5的差：\n") ;
    printf("10-5=%d\n",10-5);
    printf("计算10和5的积：\n") ;
    printf("10*5=%d\n",10*5);
    printf("计算10和5的商：\n") ;
    printf("10+5=%d\n",10/5);

    //int 代表后面定义的变量是个整数
    //a和b称之为变量，可以用来保存数值
    
    int a;
    int b;

    printf("请输入a的值：\n");
    scanf("%d",&a);

    printf("请输入b的值：\n");
    scanf("%d",&b);

    printf("计算a和b的和：\n");
    //printf("%d+%d=%d\n",a,b,a+b);
    add(a,b);

    printf("请输入a的值：\n");
    scanf("%d",&a);

    printf("请输入b的值：\n");
    scanf("%d",&b);

    printf("计算a和b的差：\n");
    //printf("%d-%d=%d\n",a,b,a-b);
    dec(a,b);

    printf("请输入a的值：\n");
    scanf("%d",&a);

    printf("请输入b的值：\n");
    scanf("%d",&b);

    printf("计算a和b的积：\n");
    //printf("%d*%d=%d\n",a,b,a*b);
    mult(a,b);

    printf("请输入a的值：\n");
    scanf("%d",&a);

    printf("请输入b的值：\n");
    scanf("%d",&b);

    printf("计算a和b的商：\n");
    //printf("%d-%d=%d\n",a,b,a/b);
    chu(a,b);

    return 0;
}
