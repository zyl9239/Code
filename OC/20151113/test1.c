#include <stdio.h>

int main(void)
{
    int count=1;
    
    for (int a = 9; a > 0; a--)
    {
        count = (count +1)*2;
    }
    printf("第一天共摘了%d个桃子。\n",count);

    for (int a = 1; a <= 9; a++)
    {
        count = count/2 -1;
        printf("第%d天剩余%d个桃子。\n",a,count );
    }

    return 0;
}
