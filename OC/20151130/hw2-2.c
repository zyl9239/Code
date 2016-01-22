/*分别用数组和指针方法逐一输出“hello,world!”的每个字符。*/
#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(void)
{
    char c[15] = "hello,world!";
    char *c1 = "hello,world!";

    for(int i = 0; i < strlen(c); i++)
    {
        printf("%c\t",c[i]);
    }
    printf("\n");

    for(int i = 0; i < strlen(c1); i++)
    {
        printf("%c\t",*(c1+i));
    }
    printf("\n");

    return 0;
}
