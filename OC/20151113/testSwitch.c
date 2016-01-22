#include <stdio.h>
int main(void)
{
    int today;
    printf("请输入今天星期几：\n");
    scanf("%d",&today);

    switch(today)
    {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            printf("去上课！\n");
            break;
        case 6:
            printf("去逛街！\n");
            break;
        case 7:
            printf("回老家！\n");
            break;
        default:
            printf("宅在家！\n");
            break;
    }

    return 0;
}
