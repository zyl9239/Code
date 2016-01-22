#include <stdio.h>
#include <stdlib.h>
//复杂声明举例
int*(*(*fun)(int *))[10];

int* (*arrPointer)[10];//arrPointer是具体的变量
//分解如下：
typedef int*(*IntArr10P_t)[10];
IntArr10P_t arrPointer;//用新的类型名定义变量

//IntArr10P_t表示指向10个元素数组的指针，数组的每个元素都是int *类型
IntArr10P_t (*fun)(int*);//定义了一个函数指针变量fun,是全局变量
//typedef
/*typedef int u32;//把int 定义一个新的类型名字u32

int var;
u32 var;*/
int (*pArr)[10];//*pArr+i
int a[10];//a+i
int b[10];
//等价于下面：
typedef int IntArr10[10];//给10个int元素的这类数组起个新名字叫IntArr10
IntArr10 a,b;

IntArr10P_t myFunc(int *p);
int main(void)
{
    IntArr10P_t pTmp;
    int var = 10;

    //通过函数指针调用函数
    //1.变量已经定义过了，此处为赋值
    fun = myFunc;
    //2.调用函数
    pTmp = fun(&var);
    
    for(int i=0;i<10;i++)
    {
        //*pTmp是指向数组的指针，*pTmp+i是存储10个int数的地址的指针本身的地址
        printf("*pTmp+%d >>>>> %p\n",i,*pTmp+i);
        //*(pTmp+i)是10个int数的地址
        printf("*(*pTmp+%d) >>>>> %p\n",i,*(*pTmp+i));

        //*((*pTmp)+i)是把10个int型的数取出来
        printf("*(*(*pTmp+%d)) >>>>>> %d\n",i,*(*(*pTmp+i)));
    }
    return 0;
}

IntArr10P_t myFunc(int *p)
{
    int *p1 = malloc(sizeof(int)*10);//分配10个int的空间
    if(NULL == p1)
    {
        perror("malloc for p1");
        exit(1);
    }
    printf("p1 >>>>>>> %p\n",p1);
    for(int i=0;i<10;i++)
    {
        *(p1+i) = i+*p;//给内存里面写上int类型的数
    }
    
    int **p2 = malloc(sizeof(int *)*10);//分配存储10个指针的空间，共80个字节
    if(NULL == p2)
    {
        perror("malloc for p2");
        free(p1);
        exit(1);
    }
    printf("p2 >>>>>>> %p\n",p2);
    for(int i=0;i<10;i++)
    {
        *(p2+i) = p1+i;//把10个int数的地址分别存储到p2指向的空间
    }
    //现在p2就相当于一个指向10个元素数组的指针，数组的每个元素都是int *类型的
    
    return p2;
}
