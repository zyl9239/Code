#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>//C语言的对unix系统的标准接口

int main(int argc,char *argv[])
{
    char ch;
    //打开两个文件
    FILE *resFp,*detFp;
    if ((resFp = fopen(argv[1],"r")) == NULL)
    {
        perror("open res");
        exit(1);
    }
    if ((detFp = fopen(argv[2],"w")) == NULL)
    {
        perror("open det");
        exit(2);
    }

    //具体的文件操作
    do{
        ch = fgetc(resFp);
        fputc(ch,detFp);
    } while (ch != EOF);

    //关闭两个文件
    fclose(resFp);
    fclose(detFp);

    return 0;
}
