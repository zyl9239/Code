#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int gVar = 10;//初始化的全局变量，存在全局区
double gdVar;//未初始化的全局变量，存在全局区
int printString(char *string);//函数声明，让编译器认识这个函数
int main(void)
{
    int a;//栈
   // float b;//栈
    //char str[10] = "hello";//把"hello"所有的字符存到str的空间里，str存在栈上
    char *p = "world!";//"world!"是字符串常量，存在常量区，但是p是局部变量，存在栈上
    printf("a的地址：%p\n",&a);
   // printf("b的地址：%p\n",&b);
    //printf("str的地址：%p\n",&str[0]);
    printf("p的地址：%p\n",&p);
    
    char *p1 = malloc(10);//在堆上分配10个字节的空间
    char *p2 = malloc(5);//在堆上分配5个字节的空间
    strcpy(p1,"qingyun");//第一个参数要么是数组名，要么是malloc分配过的空间
    printf("%s\n",p1);
    //下面是函数调用：就是使用函数的功能
    int result;
    for(int i=0;i<3;i++)
    {
        result = printString("你好");//result也是局部变量，用来接收printString函数的返回值
        printf("result = %d\n",result);
    }

    free(p1);//释放p1指向的这段内存，内存可以被重新分配
    free(p2);
    return 0;
}
//函数定义也叫函数的实现：具体函数能干些什么
int printString(char *string)
{
    static int count = 0;//静态局部变量，存在于全局区，但是只能在当前函数内部访问
    printf("%s\n",string);
    count++;
    printf("count = %d\n",count);

    return count;
}

