#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(void)
{
    char str[10] = "hello";

    printf("str的长度：%lu\n",strlen(str));
    printf("%s\n",str);
    //strcpy(str,"world");//第一个参数可以是字符数组，也可以是在堆上分配的空间（malloc）
    strcpy(str,"xxx");
    printf("%s\n",str);

    for (int i = 0; i < 10; i++)
    {
        printf("%c\n",str[i]);
    }

    //在堆上分配空间
    char *pstr = malloc(10);
    if (NULL == pstr)//如果申请失败
    {
        perror("malloc");
        exit(1);
    }
    strcpy(pstr,"你好");
    printf("%s\n",pstr);

    free(pstr);

    //连接两个字符串，确保第一个参数指向的空间够用，不会影响其他数据
    strcat(str,"hello");
    printf("%s\n",str);

    //比较字符串
    int result = strcmp(str,pstr);
    if (result > 0)
    {
        printf("str大于pstr!\n");
    }
    else if(result == 0)
    {
        printf("str等于pstr!\n");
    }
    else
    {
        printf("str小于pstr!\n");
    }

    //strstr函数是用于在第一个参数所指的字符串中查找第二个参数指向的字符串，如果查找到的话，则返回第一次出现的位置（第一个字符的地址），如果没找到，则返回NULL
    char *p = strstr(str,"llo");
    printf("%p\n",str);
    printf("%p\n",p);

    return 0;
}
