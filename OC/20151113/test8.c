#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    int a,b,c,d,e,f,g,h;
    int max,min;
    int result;

    printf("请老师们打分：\n");
    for (int i=0; i<8; i++)
    {
        int score;
        scanf("%d",&score);
        if(i == 0)
        {
            max = score;
            min = score;
        }
        else
        {
            if (score >= max)
            {
                max = score;
            }
            if (score <= min)
            {
                min = score;
            }
        }
        switch(i)
        {
            case 0:
                a = score;
                break;
            case 1:
                b = score;
                break;
            case 2:
                c = score;
                break;
            case 3:
                d = score;
                break;
            case 4:
                e = score;
                break;
            case 5:
                f = score;
                break;
            case 6:
                g = score;
                break;
            case 7:
                h = score;
                break;
        }
    }

    result = (a+b+c+d+e+f+g+h-max-min)/6;
    printf("去掉一个最高分：%d 去掉一个最低分：%d 最终得分：%d\n",max,min,result);
    return 0;
}
