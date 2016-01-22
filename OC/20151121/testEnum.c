#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    //枚举
    //枚举的两个重要意义
    //1：将没有意义的数字定义成有意义的名字，有利于程序的可维护性
    //2：缩小取值范围
    /*
    enum{
        Monday=1,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }day,day1;
    */

    //定义枚举的类型
    //1
    //枚举里的值的名字也不能重复定义
    /*
    enum Weekday{
        Monday=1,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    };
    */
    //2
    thpedef enum{
        Monday=1,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }Day;
    
    Day day3 = Sunday;
    printf("day3 ==== %d,",day3);

    Day day1 = Friday;
    printf("day1 ==== %d,",day1);

    Day day = Tuesday;
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
