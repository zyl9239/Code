#include <stdio.h>
//#define MAC
int main(void)
{
#if 1
    printf("打印1\n"); 
#else
    printf("不打印1\n");
#endif 
#ifdef   MAC
    printf("苹果电脑\n");
#else
    printf("windows电脑\n");
#endif
    return 0;
}
