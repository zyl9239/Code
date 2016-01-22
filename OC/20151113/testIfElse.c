#include <stdio.h>
#include <stdbool.h>
int main(void)
{
    //if & else
    //如果表达式的结果是真（是0 就是假，非0是真）的就会走逻辑1
    //否则就会执行逻辑2
    //if (表达式){
    //   逻辑1。。。
    //}else{
    //   逻辑2。。。
    //}
    bool hasMoney = false;
    bool hasTime = true;
    bool hasCar = true;

    /*
    if (hasMoney && hasTime)
    {
       printf("Go to Guilin 。。。。。。\n");
    }
    else
    {
       printf("Shang ke ba 。。。。。。\n");
    }   
    */

    if (hasMoney)
    {
        if(hasTime)
        {
            printf("Go to Guilin 。。。。。。\n");
        }
    }
    else if(hasCar)
    {
       printf("说走就走，桂林走起\n");
    }
    else
    {
       printf("Shang ke ba 。。。。。。\n");
    }

    printf("开个玩笑，不管怎样都得上课！\n");

    return 0;
}
