/*请用户输入10个人的年龄，存到数组person中，并统计各年龄段的人数并存入对应的数组。
	要求把0至9岁年龄段的人数放在child数组中，
	把10至19岁年龄段的人数放在young中，
	把20至50岁年龄段的人数放在strong中，
	其余依此类推，把50岁(含50)以上年龄的人数都放在old中。
*/
#include <stdio.h>

#define N 10

int main(void)
{
    int person[N],child[N],young[N],strong[N],old[N];
    int childNum = 0, youngNum = 0, strongNum = 0, oldNum = 0;

    printf("请输入10个人的年龄：\n");
    for(int i = 0; i < N; i++)
    {
        scanf("%d",&person[i]);
        printf("person[%d] = %d\n",i,person[i]);
    }

    for(int i = 0; i < N; i++)
    {
        if((person[i] >= 0) && (person[i] <= 9))
        {
            child[childNum] = person[i];
            childNum++;
        }
        else if((person[i] >= 10) && (person[i] <= 19))
        {
            young[youngNum] = persong[i];
            youngNum++;
        }
        else if((person[i] >=20) && (person[i] <= 49))
        {
            strong[strongNum] = person[i];
            strongNum++;
        }
        else
        {
            old[oldNum] = person[i];
            oldNum++;
        }
    }
    return 0;
}
