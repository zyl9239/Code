#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(void)
{
    //声明文件指针
    FILE * filep;
    //fopen打开文件
    //fopen("文件路径","打开方式")
    filep = fopen("/Users/qingyun/Desktop/f.txt","w+");
    printf("filep >>>> %p\n",filep);
    if(filep == NULL)
    {
        printf(">>>>>>>>\n");
        perror("open(main)");
    }

    //fprintf()文件格式化录入
    //fprintf(文件目标,"录入内容");
    fprintf(filep,"hello,world!");
    fprintf(filep,"hello,dear!");

    fclose(filep);
    
    return 0;
}
