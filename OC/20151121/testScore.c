
#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    int score[8];
    int max = 0;
    int min = 100;
    int count = 0;
    int clent = 0;

    for(int i=0;i<8;i++)
    {
        printf("请第%d位老师打分！\n",i+1);
        scanf("%d",&score[i]);
    }
    for(int j=0;j<8;j++)
    {
        if (score[j]<min)
        {
            min = score[j];
        }
        if (score[j]>max)
        {
            max = score[j];
        }
        count += score[j];
    }

    clent = (count - max - min)/6;
    printf("平均成绩是:%d\n",clent);
    return 0;
}
