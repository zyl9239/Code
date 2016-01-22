
#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    printf(">>>> %d\n",'\0');

    //这是一个字符数组，本质上只用来存储字符类型的数据集合
    char str[10] = {'h','e','l','l','o','\0'};
    printf("str[3] >>>>>> %c\n",str[3]);
    //当使用%s来格式化数组的时候，它会从数组的第一个字符读起，读到\0结束，用来表示一个字符串的内容
    printf("str >>>> %s\n",str);
    //这是一个字符串，本质上是一个字符指针，用来表示一段完整的文字内容（一句话）
    char *str1 = "hello,world";
    //当使用%s来格式化字符指针，它会找到该字符，然后从该字符读起读到\0结束
    printf("str >>>> %s\n",str1);

    return 0;
}
