#include <stdio.h>

int main(void)
{
    int s=0;
    int a;
    int size;

    printf("请输入a的值：\n");
    scanf("%d",&a);
    printf("请输入size的值：\n");
    scanf("%d",&size);

    for (int x = 0; x < size; x++)
    {
        int b = a;
        for(int y = 0; y < x; y++ )
        {
            b =b* 10 + a;
        }
        s += b;
    }

    printf("s >>>>>>%d\n",s);

    /*
     int num;       //开始输入那个数字
     int count;     //要计算的次数
     int result     //保存最后的计算结果
     
     printf("请输入要计算的数字和计算的次数：\n");
     scanf("%d,%d",&num,&count);

     int a = num;   //把一开始输入的数字保存

     for(int i = 0; i < count; i++)
     {
        result += num;  //计算累加的结果
        printf("%d",num);
        if(i != count)
        {
            printf("+");
        }
        num = num*10+a;
     }
     printf("=%d\n",result);
     
     */

    return 0;

}
