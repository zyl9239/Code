#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    char ch;
    char ch1;

    while(1)
    {

        printf("请输入第一个字母：\n");
        scanf("%c",&ch);
        if (ch == 'q' || ch == 'Q')
        {
            break;
        }
        switch(ch)
        {
            case 'M':
            case 'm':
                printf("Monday\n");
                break;
            case 'W':
            case 'w':
                printf("Wednesday\n");
                break;
            case 'F':
            case 'f':
                printf("Friday\n");
                break;
            case 'T':
            case 't':
                getchar();
                printf("请输入第二个字母：\n");
                scanf("%c",&ch1);
                if(ch1 == 'u' || ch1 == 'U')
                {
                    printf("Tuesday\n");
                }
                else if(ch1 == 'h' || ch1 == 'H')
                {
                    printf("Thursday\n");
                }      
                else
                {
                    printf("输入错误！！！\n");
                }
                    break;
            case 's':
                getchar();
                printf("请输入第二个字母：\n");
                scanf("%c",&ch1);
                if(ch1 == 'u' || ch1 == 'U')
                {
                    printf("Sunday\n");
                }
                else if(ch1 == 'a' || ch1 == 'A')
                {
                    printf("Saturday\n");
                }   
                else
                {
                    printf("输入错误！！！\n");
                }
                    break;
            default:
                    printf("输入错误！！！\n");
                    break;
        }
        getchar();
        printf("再来一次！！！\n");
    }
    return 0;
}
