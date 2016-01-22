/*输入任何一个数字，要求输出以下结果
	判断奇偶
  	分别用十进制、八进制、16进制、二进制打印
  	如果是0-127的数字，按字符和整形
  该程序可以一直使用，直到用户输入退出指令
*/
#include <stdio.h>

void printBinary(int var);

int main(void)
{
    int myVar;
    char ch;

    do{
        printf("请输入一个数字：\n");
        scanf("%d",&myVar);

        if(myVar % 2 == 0)
        {
            printf("%d是偶数。\n",myVar);
        }
        else
        {
            printf("%d是奇数。\n",myVar);
        }
        printf("十进制：%d，八进制：%#o，十六进制：%#x\n",myVar,myVar,myVar);
        printBinary(myVar);

        if((myVar >= 0) && (myVar <= 127))
        {
            printf("ascii字符集中的字符：%c,%d\n",myVar,myVar);
        }

        printf("继续判断吗？[y/n]");
        fpurge(stdin);
        scanf("%c",&ch);
    }while((ch == 'y') || (ch == 'Y'));

    return 0;
}

//打印一个int类型数字的二进制形式，通过位运算取出每一位，然后打印
void printBinary(int var)
{
    //需要一个和Var做位运算的数，长度和var相同，确保var的每一位都能被取出来
    unsigned int index = 0x80000000;//只有最高位是1，其他全是0
   
    for (int i = 0; i < 32; i++)
    {
        if ( var & index)//如果var最高位是1，按位与的结果不为0，表达式为真
        {
            printf("1");
        }
        else
        {
            printf("0");
        }
        index >>= 1;
    }
    printf("\n");
}
