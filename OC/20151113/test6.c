#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>
int main(void)
{
    char user;
    int npc, player;

    printf("请出拳:\n");
    scanf("%c",&user);

    switch(user)
    {
        case 'A':
        case 'a':
            player = 4;
            break;
        case 'B':
        case 'b':
            player = 7;
            break;
        case 'C':
        case 'c':
            player = 10;
            break;
    }

    unsigned int seed = (unsigned)time(NULL);
    srand(seed);
    npc = rand()%3;
    printf("%c vs %d\n",user,npc);
    int result = player + npc;
    switch (result)
    {
        case 5:
        case 9:
        case 10:
            printf("u win!\n");
            break;
        case 4:
        case 8:
        case 12:
            printf("平了!\n");
            break;
        case 6:
        case 7:
        case 11:
            printf("u loss!\n");
            break;
        default:
            printf("作弊......\n");
            break;
    }
    return 0;
}
