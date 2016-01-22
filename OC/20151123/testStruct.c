#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(void)
{
    //struct 是结构体的关键字
    //student 是结构体的名字（tag）
    //yulin 是结构体变量
    //结构体一般用来描述一个具体的事物，与数组存储数据的方式很像，但是存储的数据类型可以不一样
    /*
    struct student{
        int age;
        float height;
        char sex;
        char name[20];
    }yulin;
    struct student yangzhi;
    ...
    */

    typedef struct {
        int age;
        float height;
        char sex;
        char name[20];
    }STUDENT;

    STUDENT yulin;
    //使用点表达式（点语法）来访问结构体中的成员（就是事物的特征或者属性）
    yulin.age = 24;
    yulin.height = 1.75;
    yulin.sex = 'B';
    //字符串操作，用来拷贝字符串内容
    strcpy(yulin.name,"yulin");

    printf("煜林----年龄：%d\n\t身高：%.2f\n\t性别：%c\n\t名字：%s\n",yulin.age,yulin.height,yulin.sex,yulin.name);

    //结构体作为类型，也可以用来定义结构体数组，数组中的每个元素都是一个结构体
    //访问的时候先通过下标取到结构体，然后再通过点语法正常
    STUDENT Class1511(35);
    Class1511[0].age = 18;
    Class1511[0].height = 2.26;
    Class1511[0].sex = 'B';
    strcpy(Class1511[0].name,"xiaofei");
    return 0;
}
