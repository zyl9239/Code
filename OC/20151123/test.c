#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(void)
{
    typedef struct{
        int HP;//health
        float MP;//mana
        long EX;//Experience
        int LV;//Level
    }Player;

    //在定义结构体变量的时候可以直接使用聚合的方式来为结构体初始化
    Player magic = {10000,20000,100,1};
    magic.LV = 2;
    magic.HP = 20000;

    Player team[5];
    team[0].HP = 50000;
    team[0].MP = 0;

    team[1].EX = 1000000;
    team[1].LV = 100;


    /*
    Player Team[5];
    Team[0].HP = 3000;
    Team[0].MP = 2000;
    Team[0].EX = 500;
    Team[0].LV = 10;
    Team[0].str = 'S';

    Team[1].HP = 5000;
    Team[1].MP = 4000;
    Team[1].EX = 500;
    Team[1].LV = 30;
    Team[1].str = 'Z';

    Team[2].HP = 4000;
    Team[2].MP = 3000;
    Team[2].EX = 500;
    Team[2].LV = 20;
    Team[2].str = 'F';
    */

    for (int i = 0; i < 3; i++)
    {
        printf("职位：%c\t血：%.2f\t法：%.2f\t经验：%d\t级别：%d\n",Team[i].str,Team[i].HP,Team[i].MP,Team[i].EX,Team[i].LV);
    }
    return 0;
}
