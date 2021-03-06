#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *getMemory(int num);
int main(void)
{
    char *str = NULL;

    str = getMemory(100);
    strcpy(str,"hello");
    printf("%s\n",str);

    free(str);//释放在子函数中申请的那块内存
    str = NULL;//防止野指针
    return 0;
}
//指路针函数：返回值是指针的函数
char *getMemory(int num)
{
    char *p = malloc(num);//在堆上分配num个字节空间
    if(NULL == p)
    {
        perror("malloc");
        exit(1);
    }
    return p;//返回已分配的内存空间的首地址
}
