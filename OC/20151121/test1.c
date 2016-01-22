#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    int num;
    printf("请输入一个数字：\n");
    scanf("%d",&num);
    printf("%d, %o, %x\n",num,num,num);
    if(num%2 == 0)
    {
        printf("%d是偶数。\n",num);
    }
    else
    {
        printf("%d是奇数。\n",num);
    }
    if(num >= 0 && num <= 127)
    {
        printf("%c, %d\n",num,num);
    }
    return 0;
}
