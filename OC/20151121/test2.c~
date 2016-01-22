#include <stdio.h>
#include <stdbool.h>

    typedef enum {
        Januaty=1,
        February,
        March,
        April,
        May,
        June,
        July,
        August,
        September,
        October,
        November,
        December
    }Mon;
void moonPlan(Mon m);

int main(void)
{
    char ch;
    Mon m;
    do
    {
        printf("请输入月份：\n");
        scanf("%d",&m);
        moonPlan(m);
        printf("是否继续：【y/n】");
        fpurge(stdin);
        scanf("%c",&ch);
    }while((ch == 'y') || (ch == 'Y'));

    return 0;
}

void moonPlan(Mon m)
{
    switch (m)
    {
        case Januaty:
            printf("正月梅花香又香");
            break;
        case February:
            printf("二月兰花盆中装");
            break;
        case March:
            printf("三月桃花红十里");
            break;
        case April:
            printf("四月蔷薇靠短墙");
            break;
        case May:
            printf("五月石榴红似火");
            break;
        case June:
            printf("六月荷花满池塘");
            break;
        case July:
            printf("七月栀子头上戴");
            break;
        case August:
            printf("八月桂花满树黄");
            break;
        case September:
            printf("九月菊花初开放");
            break;
        case October:
            printf("十月芙蓉正上妆");
            break;
        case November:
            printf("十一月水仙供上案");
            break;
        case December:
            printf("十二月腊梅雪中香");
            break;
    }
}
