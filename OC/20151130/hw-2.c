/*一家水果店出售4种水果，每千克价格分别是：苹果1.15元，桔子1.20元，香蕉0.95元，菠萝0.85元。
  编一程序使售货员主要从键盘上打入货品的代码及重量，计算机将显示货品名、单价、重量及总价。
  货品代码为苹果1，桔子2，香蕉3，菠萝4。
  该程序可以一直使用，直到用户输入退出指令
*/
#include <stdio.h>

int main(void)
{
    //定义相关变量
    char ch;
    float priceA = 1.15,priceO = 1.20,priceB = 0.95,priceP = 0.85;
    char code;
    float weight;
    float sum;

    printf("请输入货品的代码和重量：[1.苹果 ， 2.桔子 ， 3.香蕉 ， 4.菠萝]\n");
    //功能逻辑
    do
    {
        scanf("%c/%f",&code,&weight);
        switch(code)
        {
            case '1':
                money = priceA * weight;
                printf("苹果\t%.2f\t%.3f\t%.2f\n",priceA,weight,money);
                break;
            case '2':
                money = priceO * weight;
                printf("桔子\t%.2f\t%.3f\t%.2f\n",priceO,weight,money);
                break;
            case '3':
                money = priceB * weight;
                printf("香蕉\t%.2f\t%.3f\t%.2f\n",priceB,weight,money);
                break;
            case '4':
                money = priceP * weight;
                printf("菠萝\t%.2f\t%.3f\t%.2f\n",priceP,weight,money);
                break;
            default:
                printf("不能识别的货品！\n");
                break;
        }
        sum += money;
        printf("还有货品吗？[y/n]\n");
        fpurge(stdin);
        scanf("%c",ch);
    }while ((ch == 'y') || (ch == 'Y'));
    return 0;
}
