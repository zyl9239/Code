#include <stdio.h>

int main(void)
{
    for(int x = 1; x <= 9; x++)
    {
        for(int y = 1; y <= x; y++)
        {
            printf("%d*%d=%d\t",y,x,x*y);
        }
        printf("\n");
    }
    return 0;
}
