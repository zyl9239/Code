#include <stdio.h>
#include <stdbool.h>

bool xiaoming(int);
void nainai(void);

int main(void)
{
    int money = 10;
    bool result;

    printf("大爷走不动，小明来帮忙！\n");
    
    //变量 = 函数（参数，……）；
    //变量最终保存的值就是函数的返回值
    result = xiaoming(money);
    
    if (result)
    {
        printf("买水成功！\n");
    }
    else
    {
        printf("失败了…………\n");
    }

    //通过调用函数来查看奶奶买水的结果
    nainai();//除了main函数之外，其他的函数在没有调用之前，逻辑都不会被执行

    return 0;
}

bool xiaoming (int money)
{
    bool result;
    printf("去小卖部……\n");

    if(money >=5)
    {
        printf("花掉5块钱，买到水……\n");
        money -= 5;
        result = true;
    }
    else
    {
        result = false;
    }

    return result;
}

void nainai(void)
{
    int money = 3;
    bool result;

    result = xiaoming(money);

    if(result)
    {
        printf("OK!\n");
    }
    else
    {
        printf("哎……\n");
    }
}
