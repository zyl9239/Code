#include <stdio.h>

int main(void)
{
    union
    {
        int a;
        char b;
    }uVar;

    uVar.a = 0x00000001
    
    
    
    
    \\01;

    if(uVar.b == 1)//如果b是1，说明a的最低字节（0x01）存在于最低的地址里面
    {
        printf("当前系统是小端存储方式!\n");
    }
    else
    {
        printf("当前系统是大端存储方式！\n");
    }
    return 0;
}
