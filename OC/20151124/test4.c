#include <stdio.h>
#include <stdbool.h>
#include <string.h>

void gongneng();//增加、删除、查询的功能声明
void zengjia();//增加功能声明
void shanchu();//删除功能声明
void chaxun();//查询功能声明

//定义一个学生结构体
typedef struct {
    char name[20];//姓名
    int num;//学号
    int age;//年龄
    char set[10];//性别
    double score;//分数
}STU;

//定义一个20人学生数组
STU student[20] = (0);

int main(void)
{
    //提示用户登录学生管理系统
    printf("\n\n\n\n\t\t\t\t\t\t 欢迎使用学生管理系统！\n");

    //调用功能
    gongneng();

    //程序归零，正常退出
    return 0;
}
//所有功能定义
void gongneng()
{
    //保证功能函数一直不退出循环，想退出的时候再退出（可退出的死循环）
    for(;;)
    {
        //定义功能的标识
        int n = 0;
        
        //提示用户输入
        printf("\t\t\t\t\t\t*********************\n");
        printf("\t\t\t\t\t\t    1.增加学生信息\n");
        printf("\t\t\t\t\t\t    2.删除学生信息\n");
        printf("\t\t\t\t\t\t    3.查询学生信息\n");
        printf("\t\t\t\t\t\t   退出系统按任意键\n");
        printf("\t\t\t\t\t\t*********************\n");

        //接收用户的选择
        getchar();
        scanf("%d",&n);

        //定义用户所需进入的选择
        if (n == 1)
        {
            zengjia();//增加
        }
        else if (n == 2)
        {
            shanchu();//删除
        }
        else if (n == 3)
        {
            chaxun();//查询
        }
        else
        {
            break;
        }
    }
}

//增加功能定义
void zengjia()
{
    //定义学生数组每个人的信息
    static int i;
    while (i<20)
    {
        printf("请输入该学生的姓名：\n");
        scanf("%s",str.name);
        printf("请输入该学生的年龄（5岁-30岁之间）\n");
        scanf("%d",&str.age);
        //检察年龄是否适当（5岁-30岁之间）
        while (str.age<5 || str.age>30)
        {
            printf("对不起，您的学生年龄输入可能不误\n");
            printf("请重新输入该学生年龄\n");
            getchar();
            scanf("%d",&str.age);
        }
        printf("请输入该学生的性别(man或woman)\n");
        scanf("%s",str.set);
        //只能输入男或女或man或woman
        while ((strcmp("man",str.set)!=0) && (strcmp("woman",str.set)!=0))
        {
            printf("您输入的性别有误\n请重新输入\n");
            scanf("%s",str.set);
        }
        printf("请输入该学生的学号\n");
        scanf("%s",str.num);

    }
}

//
void shanchu()
{
    printf("请输入需要删除的选择\n学号删除请按1\n姓名删除请按2\n性别删除请按3\n分数删除请按4\n删除所有请按5\n返回请按任意键\n");
    int a = 0;
    scanf("%d",&a);
    if (a == 1)
    {
        shanchuxuehao();
    }
    else if (a == 2)
    {
        shanchuxingming();
    }
    else if (a == 3)
    {
        shanchuxingbie();
    }
    else if (a == 4)
    {
        shanchufenshu();
    }
    else if (a == 5)
    {
        shanchusuoyou();
    }
}

void shanchuxuehao()
{
    //提示用户需要删除该学生的学号
    printf("请输入需要删除该学生的学号\n");
    int n = 0;
    scanf("%d",&n);
    //找到这个学号对应的数组
    for (int i = 0; count = 0; i < 20; i++)
    {
        //定义一个空的学生变量a
        STU a;
        //如果数组某一个元素的学号与需要删除的学号相等
        if (str.num == n)
        {
            printf("您要删除的学生姓名是%s、年龄是%d、性别是%s、学号是%d、分数是%f\n如不是请按1（跳过继续查找），返回请按2，删除请按任意键\n",str.name,str.age,str.set,str.num,str.score);
            int b = 0;
            scanf("%d",&b);
            if(b == 1)
            {
                continue;
            }
            else if(b == 2)
            {
                shanchu();
            }
            else
            {
                str = a;//然后将这个数组元素清空
                --count;
            };
        }
        ++count
    }
}
