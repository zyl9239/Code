#include <stdio.h>
#include <stdbool.h>

//void swap(int x, int y);
void swap(int *px, int *py);

int main(void)
{
    int var,secVar;

    printf("请输入两个数：\n");
    scanf("%d,%d",&var,&secVar);

    printf("交换前的值：var = %d,secVar = %d\n",var,secVar);
    //swap(var,secVar);
    //函数调用时隐含两步操作
    //x = var;
    //y = secVar;
    swap(&var,&secVar);
    printf("交换后的值：var = %d,secVar = %d\n",var,secVar);

    return 0;
}
//值传递，就是把变量的值作为参数

/*
void swap(int x,int y)
{
    printf("交换前x = %d,y = %d\n",x,y);

    int temp = x;
    x = y;
    y = temp;

    printf("交换前x = %d,y = %d\n",x,y);

}
*/
//地址传递，就是把主调函数里面变量的地址传进来，那么在这个函数里面可以直接操作主调函数里面的变量。

void swap(int *px, int *py)
{
    int temp = *px;
    *px = *py;
    *py = temp;

}
