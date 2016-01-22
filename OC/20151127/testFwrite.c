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
    ENGINEER egs[10];
    egs[0].age = 30;
    egs[0].salary = 20000;
    strcpy(egs[0].name,"liukai");
    egs[1].age = 30;
    egs[1].salary = 10000;
    strcpy(egs[1].name,"yangyang");
    egs[2].age = 30;
    egs[2].salary = 21000;
    strcpy(egs[2].name,"licong");
    egs[3].age = 30;
    egs[3].salary = 20100;
    strcpy(egs[3].name,"mengjie");

    FILE *data;
    if((data = fopen("/Users/qingyun/Desktop/info.data","w")) == NULL){
        perror("open data file");
        exit(1);
    }

    //fwrite
    //第一个参数 需要写入文件的数据在内存的位置
    //第二个参数 每次需要写入的长度
    //第三个参数 总共需要写入的次数
    //最后一个参数 需要写入的文件指针
    fwrite(egs,sizeof(ENGINEER),4,data)
    fclose(data);

    return 0;
}
