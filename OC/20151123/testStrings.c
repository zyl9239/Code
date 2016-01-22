#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    //二维字符数组中需要保存字符串中所有的字符
    char names[3][20] = {
        {'y','a','n','z','h','e','n'},
        {'s','h','a','o','p','i','n','g'},
        {'x','u','p','e','n','g'}
    };

    printf("names >>>>>> %ld\n",sizeof(names));
    printf("name1 >>>>>> %s\n",names[0]);

    //字符串数组中只是保存文字常量区中字符串的首字符地址
    char *names1[3] = {"wanglei","longbo","zhenzhen"};

    printf("names1 >>>> %ld\n",sizeof(names1));
    printf("names1 >>>> %s\n",names1[0]);

    //数组名和字符串常量都是地址值，对地址求值就可以救出对应空间中保存的值
    char name[20] = "simingyang";
    //使用下标去元素值的本质做法是对指针进行偏移（偏移的长度是存储类型的单位长度乘以偏移量）然后取值
    printf("name[5] >>>> %c\n",name[5]);
    printf("name[0] >>>> %c\n",*name);
    printf("name[5] >>>> %c\n",*(name+5));

    printf("str[5] >>>> %c\n",*("liangxiaofei"+5));
    printf("str[5] >>>> %c\n","liangxiaofei"[5]);

    return 0;
}
