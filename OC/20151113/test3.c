#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    int val = 0;
    int a = 0;

    printf("请输入一个数字：\n");
    scanf("%d",&val);
    //printf("输入的是：%d\n",val);
    do
    {
        val=val/10;
        //printf("%d\n",val);
        a++;
    }while(val > 0);
    printf("您输入的是一个%d位数！\n",a);

    return 0;
}
