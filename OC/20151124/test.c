#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <unistd.h>

//main函数的参数
//char* argv[]表示MAIN函数参数列表，其中第一个元素是程序名字（地址）
//int argc 表示参数列表中的元素个数
//第一个元素是记录进程名的位置，默认使用执行程序的名字
int main(int argc, char* argv[])
{
    //char *names[5] = {"mingyang","dongtao","wangfeng"};
    
    for(int i = 0; i < argc; i++)
    {
        printf("argv[%d] >>>> %s\n",i,argv[i]);

    }

    //argv[0] = "Xcode";            //将原有地址改为现有地址
    //strcpy(argv[0],"Xcode");      //将地址上的值更改
    //sleep(960);                   //程序暂停执行，单位秒
    return 0;
}
