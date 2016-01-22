#include <stdio.h>

int main(void)
{
    union
    {
        int a[7];
        char b;
        double c;
    }uVar;

    printf("sizeof(uVar) = %lu\n",sizeof(uVar));
    return 0;
}
