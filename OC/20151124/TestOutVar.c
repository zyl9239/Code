#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(void)
{
    int a;
    printf("please input:");
    //当使用地址作为参数时，这种参数称为初参，意味着被调用的函数需要处理该地址中保存的数据
    scanf("%d",&a);

    char name[10] = {0};
    scanf("%s",name);

    return 0;
}
