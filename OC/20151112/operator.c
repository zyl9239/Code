#include <stdio.h>
#include <stdbool.h>
int main(void)
{
    bool zhangsanIsMan = true;
    bool lisiIsMan = false;
    
    //
    if(zhangsanIsMan)
    {
        printf("张三是男人！\n");
    }

    if(zhangsanIsMan && lisiIsMan)
    {
        printf("张三和李四都是男人！\n");
    }
    
    if(zhangsanIsMan || lisiIsMan)
    {
        printf("张三和李四至少有一个是男人！\n");
    }

    if(!lisiIsMan)
    {
        printf("李四不是男人！\n");
    }

    int var;
    int var1;
    scanf("%d",&var);
    scanf("%d",&var1);
    if (var < var1)
    {
        printf("var 小于 var1\n");
    }

    if((var == 4) && (var1 > 7))
    {
        printf("var 等于 4，并且 var1 大于 7 ! \n");
    }

    return 0;
}
