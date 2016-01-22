#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    int weekday;
    printf("请输入周几：\n");
    scanf("%d",&weekday);
    switch(weekday)
    {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            printf("study\n");
            break;
        case 6:
            printf("shopping\n");
            break;
        case 7:
            printf("sleep\n");
            break;
        default:
            printf("你是大神，你一周的生活有%d天！\n",weekday);
            break;
    }
}
