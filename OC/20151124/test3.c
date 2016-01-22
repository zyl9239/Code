#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(void)
{
    char c[200],b;
    int num = 0;
    printf("请输入一个字符串：\n");
    scanf("%s",c);
    getchar();
    printf("请输入要查找的字符：\n");
    scanf("%c",&b);
    for (int i = 0; i < strlen(c); i++)
    {
        if(c[i] == b)
        {
            num++;
        }
    }
    printf("字符'%c'在字符串'%s'中有%d个。\n",b,c,num);

    return 0;
}
