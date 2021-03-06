
#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    int a;
    int b;
    float c;
    float result;

    a = 100;
    b = 33;
    c = 33.0;

    result = a/b;
    //结论：如果有更高精度类型的数值参与运算，结果肯定需要使用参与运算中最高精度的类型来存储结果
    printf("result ==== %f\n",result);
    
    result = a/c;
    printf("result ==== %f\n",result);
    //强制格式化输出，是直接将内存中存储的内容按照格式化的要求输出。
    printf("result ==== %d\n",(result);
    
    printf("result ==== %d\n",(int)result);

    return 0;
}
