#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>

int main(void)
{
    //声明文件指针
    FILE * fp;
    //fopen 打开文件
    //第一个参数是文件路径，建议使用绝对路径
    //第二个参数是操作模式
    //w:只写，如果文件不存在，会创建文件;如果文件存在且有内容，则会清空内容，准备重写
    //r:只读，如果文件不存在，不会得到文件指针
    //a:追加，在文件末尾追加内容，文件不存在不会得到文件指针
    //后面都可以写上‘+’代表读写兼容
    //前面可以写t(ext)或者b(inary),但是在unix/linux不区分二进制和文本文件，可以忽略不写
    fp = fopen("/Users/qingyun/Desktop/1.txt","r+");

    printf("fp >>>> %p\n",fp);
    if(fp == NULL)
    {
        printf(">>>>>>>>>>>>>>\n");
        perror("open(main)");
    }
    
    //fprintf 文件格式化录入，printf 默认的文件目标是 标准输出stdout(显示器)，fprintf 可以指定输出的文件目标
    fprintf(stdout,"hello,world!\n");
    //fprintf(fp,"hello,world!\n");
    
    char str[100] = {0};
    fscanf(fp,"%s",str);
    printf("str >>>> %s\n",str);

    //关闭文件
    fclose(fp);

    return 0;
}
