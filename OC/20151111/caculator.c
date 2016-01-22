#include<stdio.h>

int add(int a, int b)
{
    printf("%d+%d=%d\n",a,b,a+b);
    return 0;
}
int dec(int a, int b)
{
    printf("%d-%d=%d\n",a,b,a-b);
    return 0;
}
int mult(int a, int b)
{
    printf("%d*%d=%d\n",a,b,a*b);
    return 0;
}
int chu(int a, int b)
{
    printf("%d÷%d=%d\n",a,b,a/b);
    return 0;
}

int main(void)
{
    //printf 就是输出文字内容
    //\n 的意思就是换行
    //%s 为文字内容占位
    //%d 为整数占位
    //int 代表后面定义的变量是个整数
    //a和b称之为变量，可以用来保存数值
    //scanf获取用户的输入
    long salary;//8 byte
    int a;      //int = 4 byte
    //int var;  //int 代表需要向内存请求4个字节的空间来存储var所代表的数值
    int b;

    printf("请输入a的值：\n");
    scanf("%d",&a);

    printf("请输入b的值：\n");
    scanf("%d",&b);

    printf("计算a和b的和：\n");
    add(a,b);
    printf("计算a和b的差：\n");
    dec(a,b);
    printf("计算a和b的积：\n");
    mult(a,b);
    printf("计算a和b的商：\n");
    chu(a,b);

    return 0;
}
