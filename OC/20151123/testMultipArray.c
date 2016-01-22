#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    int ages[8][5] = {
        {20,21,24,30};
        {18,17,29,21,22};
        {32,21,22,33}
    };

    printf("ages[1][2] >>>> %d\n",ages[1][2]);
    printf("ages[2]02] >>>> %d\n",ages[2][0]);
    return 0;
}
