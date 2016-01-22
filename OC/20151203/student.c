#include <stdio.h>

int main(void)
{

}

void frist_print()
{
    printf("\t\t********************************\n\n"); //欢迎信息
    printf("\t\t\t欢迎进入学生成绩系统\n");
}

void menu()
{
    printf("\n\t\t********************************\n"); //管理菜单
    printf("\t\t==\t1.录入学生成绩\n\t\t+\n");
    printf("\t\t==\t2.显示学生成绩\n\t\t+\n");
    printf("\t\t==\t3.查询学生成绩\n\t\t+\n");
    printf("\t\t==\t4.添加学生成绩\n\t\t+\n");
    printf("\t\t==\t5.修改学生成绩\n\t\t+\n");
    printf("\t\t==\t6.删除学生成绩\n\t\t+\n");
    printf("\t\t==\t7.清空页面\n\t\t+\n");
    printf("\t\t==\t8.退出系统\n");
    printf("\n\t\t********************************\n");
    printf("please choise 1--8:\t");
    putchar(10);
}

struct MM                                               //结构体定义变量
{
    char num[20];
    char name[10];
    float pay;
    int many;
}mm;

void scanf_1()                                         //第一次输入信息并保存在文件中
{
    char ch;
    FILE *fp;
    if ((fp == fopen("dd.dat","wb+")) == NULL)
    {
        printf("cannot open file\n");
        exit(0);
    }

    do
    {
        printf("请输入成绩的--编号：\t");
        getchar();
        gets(mm.num);

        printf("姓名：\t");
        gets(mm.name);

        printf("成绩：\t");
        scanf("%f",&mm.pay);

        printf("学号：\t");
        scanf("%d",&mm.many);

        if(fwrite(&mm,sizeof(struct MM),1.fp) != 1)
        {
            printf("file write error\n");
            exit(0);
        }

        printf("是否继续输入y or n ?\t");
        getchar();
        ch = getchar();
    }while(ch == 'y' || ch == 'Y');

    fclose(fp);
}

void find()                                 //查询成绩有信息
{
    int a,b = 0;
    char ch[20];
    FILE *fp;
    if((fp = fopen("dd.dat","rb")) == NULL)
    {
        printf("cannot open file\n");
        exit(0);
    }
    printf("请输入要查询的成绩的方式\n\t1.编号 2.姓名：\n\t 请选择 1 or 2 \t");
    scanf("%d",&a);
}
