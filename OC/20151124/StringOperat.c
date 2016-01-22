
#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(void)
{
    char arr[20] = {0};
    strcpy(arr,"hello");
    strcat(arr,"world!");
    printf("arr >>>> %s\n",arr);

    char arr1[20] = "say:";
    strcat(arr1,arr);
    printf("arr1 >>>> %s\n",arr1);

    //查找字符
    char *str = "name: poppei age:30";
    printf("str >>>> %p\n",str);
    //strchr用来查找字符串中字符的位置
    printf("p >>>> %p\n",strchr(str,'p'));
    printf("x >>>> %p\n",strchr(str,'x'));
    if(strchr(str,'x') == NULL)//NULL可以代表空指针
    {
        printf("string没有 x\n");
    }
    printf("NULL >>>> %p\n",NULL);
    //strrchr反向查找字符位置
    printf("p >>>> %p\n",strrchr(str,'p'));

    //查找字符串
    char *str1 = "malongbo";
    printf("str1 >>>> %p\n",str1);
    printf("long >>>> %p\n",strstr(str1,"long"));

    //字符串比较
    //按字符串中字符的ascii码值逐个比较，直到比出大小为止，主要用于音序排序
    char *name11 = "wangzhenzhen";
    char *name12 = "zhaowenbo";
    int result = strcmp(name11,name12);
    printf("result >>>> %d\n",result);

    //字符串长度
    char *text = "lkjflsdjfoiwejkldjioejgkfdfjofjuffjskldfjiowjeklsd";
    printf("text >>>> %ld\n",strlen(text));
    return 0;
}
