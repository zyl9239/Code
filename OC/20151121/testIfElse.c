#include <stdio.h>

int foo(void);
int main(void)
{
    int a;
    a = 10;
    foo();
    return 0;
}

int foo(void)
{
    int b = 10;
    if(b == 10)
    {
        return 0;
    }
}
