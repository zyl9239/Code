#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>//C语言的对unix系统的标准接口

typedef struct {
    char name[20];
    int age;
    float salary;
}ENGINEER;

int main(void)
{
    ENGINEER egs[4] = {0};

    FILE *data;
    if((data = fopen("/Users/qingyun/Desktop/info.data","r")) == NULL){
        perror("open data file");
        exit(1);
    }

    //fread
    //第一个参数 需要读入内存的起始位置
    //第二个参数 每次需要读入的长度
    //第三个参数 总共需要读入的次数
    //最后一个参数 需要被读取的文件指针
    fread(egs,sizeof(ENGINEER),4,data);

    for (int i = 0; i < 4; i++)
    {
        printf("name:%s age:%d gongzi:%.2f\n",egs[i].name,egs[i].age,egs[i].salary);
    }
    fclose(data);

    return 0;
}
