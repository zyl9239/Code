/*随便输入一段字符串，统计指定字符的数量*/
#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(void)
{
    char str[200],ch;
    int count = 0;
    printf("请输入一个字符串：\n");
    scanf("%s",str);
    //getchar();
    printf("请输入要查找的字符：\n");
    fpurge(stdin);
    scanf("%c",&ch);
    
    char *pFind = str;

    while (*pFind != '\0')
    {
        pFind = strchr(pFind,ch);
        
       if(pFind != NULL) 
       { 
            count++;
            pFind++;
       }
       else
       {
           break;
       }
    }
    printf("\'%c\'在\"%s\"出现了%d次。\n",ch,str,count);

    return 0;
}
