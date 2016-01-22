#include <stdio.h>
#include <stdbool.h>

                             //函数的声明
                             //在函数的声明和实现中，如果没有参数，必须明文写上void代表不需要参数，不能忽略不写。
void foo(void);              //这个代表函数的声明语句，以分号结尾
                             //函数与函数都是独立的个体，如果需要传递信息的话，需要借助具体的参数和返回值，还可以通过全                               局变量来传递信息。
int add(int x ,int y);       //add的声明，声明中的参数也是形参，不需要写具体的参数名字只需要确定参数类型就行

int main(void)
{
    bool isGoodDay = true;  //普通的语句都是以分号结束，代表是一个不可分割的整体。

    if(isGoodDay)           //如果是一堆基本的语句组成的一个不可分割的整体，必须使用大括号括起来
    {
        printf("good good study!\n");
        printf("day day up!\n");
    }
    else
    {
        printf("go somewhere ...\n");
    }

    foo();                  //函数的调用，在调用的时候如果没有参数就不需要写任何的参数了
    
    int a = 10;
    int b = 87;
    int result;
                           //⚠⚠⚠⚠在函数调用的时候只是把参数的值传入另外一个函数，并没有把变量自身传过去。
    result = add(a,b);     //在调用的时候传入的参数称之为实参

    return 0;
}

int add(int a,int b)
{
    return a+b;
}

void foo(void)            //foo bar ======不知道什么名字，随便起个名字
{
    printf("fooo....................\n");
    printf("fooo....................\n");
    printf("fooo....................\n");
    printf("fooo....................\n");
    printf("fooo....................\n");
    printf("fooo....................\n");
    printf("fooo....................\n");
    printf("fooo....................\n");
    printf("fooo....................\n");
    printf("fooo....................\n");
    printf("fooo....................\n");
}
//函数必须包括在一对大括号中。
