#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    //for （起始条件;终止条件；变化条件）
    //{
    //  需要循环执行的逻辑。。。。。。； 
    //}
    //
    //双层循环是一和常用的嵌套式的循环体，执行的次数等于外层循环次数*内层循环的次数
    int day;
    int hour;
    int a = 1;

    for(day = 1; day <= 31; day++)
    {
        if(a == 4)
        {
            printf("================\n");
            printf("放假咯……\n");
            printf("================\n");
            a=0;
        }
        else
        {    
            for(hour = 9; hour <= 22; hour++)
            {   
                if(hour >= 13 && hour <=14)
                {   
                    printf("zZzZZzZZZ…………\n");
                }   
                else
                {   
                    printf("第%d天-%d时：在青云学习iOS\n",day,hour);
                }   
            }
        }
        a++;
    }
    
    return 0;
}
