#include <stdio.h>

int main(void)
{
    int arr[5];
    int *p = arr;//把数组arr的首地址赋给p,p = &arr[0];数组名代表数组首元素的地址
    for(int i=0;i<5;i++)
    {
        arr[i] = i;
        *(p+i) = i+5;//通过指针方式访问（左值是写操作，右值是读）    
        printf("%d\n",p[i]);
        printf("%d\n",*(arr+i));//*(arr+i)等价于arr[i]
        printf("%p\n",p+i);//p+i表示第i个元素的地址
        
    }
    for(int i=0;i<5;i++)
    {
        printf("%p\n",p);
        printf("%d\n",*p);
        p++;//p = p+1;p本身的指向发生了改变，向后偏移4个字节（也就是偏移它本身类型的长度）
        //但是不能这么用：arr++;因为arr数组名相当于是指针常量，不能修改
    }

    return 0;
}


