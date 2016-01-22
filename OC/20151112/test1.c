#include <stdio.h>
int main(void)
{
    int myInt = 5;
    myInt *= (3+4)*2;
    printf("myInt >>>>>> %d\n",myInt);
    
    myInt = 2;
    myInt *= ((3*4) / 2) - 9;
    printf("myInt >>>>>> %d\n",myInt);
    
    myInt = 2;
    myInt /= 5;
    myInt--;
    printf("myInt >>>>>> %d\n",myInt);

    myInt = 25;
    myInt /= 3*2;
    printf("myInt >>>>>> %d\n",myInt);

    myInt = (3*4*5)/9;
    myInt -= (3+4)*2;
    printf("myInt >>>>>> %d\n",myInt);

    myInt = 5;
    myInt = (3+4)*2;
    printf("myInt >>>>>> %d\n",myInt);

    myInt = 5;
    printf("myInt = %d\n",myInt = 2);
    printf("myInt >>>>>> %d\n",myInt);

    myInt = 1;
    myInt /= (3+4)/6;
    printf("myInt >>>>>> %d\n",myInt);
    
    return 0;
}
