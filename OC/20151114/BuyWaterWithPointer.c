#include <stdio.h>
#include <stdbool.h>

void xiaoming(int *);

int main(void)
{
    int money = 10;
    bool result = false;
    printf("money >>>>>>%p\n",&money);

    int *moneyPointer = &money;

    printf("大爷走不动了，小明来帮忙...\n");

    xiaoming(moneyPointer);

    if(money <10)
    {
        printf("买水成功\n");
        printf("还剩%d\n",money);
    }
    else
    {
        printf("失败...\n");
    }
    return 0;
}

void xiaoming(int *mp)
{
    printf("去小卖部......\n");
    printf("money >>> %d\n",*mp);

    if(*mp >=8)
    {
        printf("花掉8块钱，买到水......\n");
        *mp = *mp-8;
    }
}
