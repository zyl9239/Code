#include <stdio.h>
#include <stdbool.h>

int globalVar;

int main(void)
{
    printf("globalVar >>> %d, %p\n",globalVar,&globalVar);
    
    int a;
    printf("a >>>> %d, %p \n", a, &a);

    //字符串常量本身就是一个指针（地址值），指向文字常量区中该字符串首字符的地址，所以是字符型的指
    //p1p2p3p4都是main函数中的局部变量，所以地址都是在main函数的栈中，而其中保存的值都是这个字符串首字符的地址
    //字符数组只能在定义的时候使用字符串常量赋值，本质的做法是把文字常量区中存储的字符串内容拷贝到栈中的数组空间中
    char *name1 = "malifeng";
    char name[20] = "malifeng";//{'m','a','l','f',...}
    //数组名在被访问的时候是当做指针来对待的
    //%s格式化输出的目标是一个地址，它的做法是从该地址往后读，直到读取到\0为止，把中间所有的内容当做文本内容输出
    //C中的数组不能被整体赋值，只能单个访问其中的元素，所以下面这个是错误的写法
    return 0;
}
