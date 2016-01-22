#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    //整形家族的int部分
    int a,m,n;
    short int b;
    long int c;
    //a = 10;
    a = 012;
    //a = 0xa;
    //%d 按 10进制整形输出，%o 八进制， %x十六进制
    printf("a ====== %d %o %x\n",a,a,a);
    m = 05;
    printf("a + m =%d\n",a+m);

    //字符型
    //字符类型本质也是整形，用一个字节来存储，在参与运算的时候当做整形数字来对待，可以使用%c来格式化输出成对应的字符，参照 ascii 码表
    char ch,ch1,ch2;

    ch = ')';
    ch1 = '(';
    ch2 = ch+ch1;
    printf("ch, ch1  ==== %d, %d\n",ch,ch1);
    printf("ch2 ==== %c, %d, %d\n",ch2, ch2, ch+ch1);

    //枚举
    //枚举的两个重要意义
    //1：将没有意义的数字定义成有意义的名字，有利于程序的可维护性
    //2：缩小取值范围
    enum{
        Monday=1,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }day;

    day = Tuesday;
    printf("day ====== %d\n",day);
    printf("请输入周几：\n");
    scanf("%d",&day);
    switch(day)
    {
        case Monday:
            printf("上课\n");
            break;
        case Tuesday:
            printf("聚2餐\n");
            break;
        case Wednesday:
            printf("聚3餐\n");
            break;
        case Thursday:
            printf("聚4餐\n");
            break;
        case Friday:
            printf("聚5餐\n");
            break;
        case Saturday:
            printf("聚6餐\n");
            break;
        case Sunday:
            printf("聚7餐\n");
            break;
        default:
            printf("做梦\n");
            break;
    }

    return 0;
}
