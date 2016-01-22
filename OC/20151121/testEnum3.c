#include <stdio.h>
#include <stdbool.h>

    typedef enum {
        Monday=1,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }Day;
void weekPlan(Day);
int main(void)
{
    //枚举
    //枚举的两个重要意义
    //1：将没有意义的数字定义成有意义的名字，有利于程序的可维护性
    //2：缩小取值范围
    
    //定义枚举变量2
    //先定义枚举的名字，再使用枚举的名字来定义变量
    //枚举里的值的名字也不能重复定义
    
    //定义
    Day day3 = Sunday;
    printf("day3 ==== %d,",day3);

    Day day1 = Friday;
    printf("day1 ==== %d,",day1);

    Day day = Tuesday;
    printf("day ====== %d\n",day);
    printf("请输入周几：\n");
    scanf("%d",&day);
    weekPlan (day); 
    return 0;
}
void weekPlan(Day d)
{
    switch(d)
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
}
