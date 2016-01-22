
#include <stdio.h>
#include <stdbool.h>

int main(void)
{

    float f;
    double df;
    long double ldf;
    
    f = 3.14;
    printf("f ==== %5.2f\n",f);
    //%.2表示格式化输出浮点型的精度是2位小数

    df = 3.141592612;
    printf("df ==== %5.3f\n",df);

    printf("float'lenth ==== %ld\n",sizeof(float));
    printf("double float'lenth ==== %ld\n",sizeof(double));
    printf("long double float'lenth ==== %ld\n",sizeof(long double));
    return 0;
}
