/*定义月份的枚举，包括12个月，用户输入对应指令打印对应的歌词
	十二月花名歌 
	正月梅花香又香 
	二月兰花盆中装 
	三月桃化红十里 	
	四月蔷薇靠短墙 
	五月石榴红似火 
	六月荷花满池塘 
	七月栀子头上戴 
	八月桂花满树黄 
	九月菊花初开放 
	十月芙蓉正上妆 
	十一月水仙供上案 
	十二月腊梅雪中香.
  该程序可以一直使用，直到用户输入退出指令
*/
#include <stdio.h>

int main(void)
{
    char ch;
    int var;

    //定义月份的枚举
    enum month{
        Januaty,
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
    };

    enum month myMonth;

    printf("请输入月份：【1~12分别对应Januaty到December】\n");
    do
    {
        scanf("%d",&var);
        myMonth = (enum month)var;
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
        printf("是否继续？【y/n】");
        fpurge(stdin);
        scanf("%c",&ch);
    }while ((ch == 'y') || (ch == 'Y'));
    return 0;
}
