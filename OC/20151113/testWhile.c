#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    //while(条件表达式){
    //   逻辑表达式
    //}
    //
    //只要while 后面的表达式结果为真，那么while体的逻辑语句就会一直执行,while与for的区别：在用while的时候大部分情况下不能直接预料循环执行的次数

    int money = 100000;

    while (money > 0){
        printf("今天花了10000\n");
        money -= 10000;
    }

    int num = 0;
    while (num >=0 && num <=100){
        printf("输入：\n");
        scanf("%d",&num);
        
        if(num % 2 >0)
        {
            printf("%d 是一个奇数\n",num);
        }
        else
        {
            printf("%d 是一个偶数\n",num);
        }
    }
    return 0;

}
