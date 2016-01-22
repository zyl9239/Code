#include <stdio.h>

#define ROWNUM 10
#define COLNUM 11

void printMap(char aa[][COLNUM]);
void move(char aa[][COLNUM],int oldX,int oldY,int newX,int newY);

int main(void)
{
    //一、定义变量
    //1.定义地图的二维数组
    char map[ROWNUM][COLNUM]={
        "##########",
        "#O ####  #",
        "# X####  #",
        "#        #",
        "######   #",
        "#  ####  #",
        "#        #",
        "#   ######",
        "#         ",
        "##########",
    };

    //2.定义存储小人和箱子的位置信息的变量
    //小人当前位置坐标
    int personX = 1;
    int personY = 1;
    //小人下一个位置的坐标
    int personNextX = personX;
    int personNextY = personY;
    //箱子当前位置坐标
    int boxX = 2;
    int boxY = 2;
    //箱子下一个位置的坐标
    int boxNextX = boxX;
    int boxNextY = boxY;

    //3.定义接收用户输入的方向字符变量
    char direction;
    //定义路的变量
    char street = ' ';
    //定义墙的变量
    char wall = '#';
    //定义箱子的变量
    char box = 'X';
    
    //二、打印地图
    printMap(map);
    
    //三、提示玩法
    //提示用户哪些键表示上下左右，或者退出游戏，或者重玩
    printf("请输入控制小人移动的方向字符：w(w)-上\ts(S)-下\ta(A)-左\td(D)-右\tq(Q)-退出游戏\n");
    //四、编写循环逻辑
    while(1)
    {
        //重置小人的下一个位置坐标，防止穿墙
        personNextX = personX;
        personNextY = personY;
    //1.获取用户的输入字符
        scanf("%c",&direction);
        fpurge(stdin);//清除输入缓冲区，防止回车符被接收
    //2.判断用户的输入和相应功能的匹配（switch）对小人的下一个位置进行更新。
        switch(direction)
        {
            case 'w':
            case 'W':
                personNextY--;
                break;
            case 's':
            case 'S':
                personNextY++;
                break;
            case 'a':
            case 'A':
                personNextX--;
                break;
            case 'd':
            case 'D':
                personNextX++;
                break;
            case 'q':
            case 'Q':
                printf("程序正在退出。。。\n");
                printf("程序已退出！\n");
                return 0;
                break;
            default:
                break;
        }
    //3.判断下一个位置是什么
        //如果是路，直接让小人向前走
        if(map[personNextY][personNextX] == street)
        {
            move(map,personX,personY,personNextX,personNextY);
            //上面只是交换了字符，对于小人的位置坐标没有更新
            //更新一下小人的当前坐标
            personX = personNextX;
            personY = personNextY;
        }
        //如果是墙，提出警告（printf("\a);）
        else if(map[personNextY][personNextX] == wall)
        {
            printf("\a");
        }
        //如果是箱子
        else if(map[personNextY][personNextX] == box)
        {
            //如果箱子的下一个位置是路，那么就移动小人和箱子
            boxNextY = boxY + (boxY - personY);
            boxNextX = boxX + (boxX - personX);
            if(map[boxNextY][boxNextX] == street)
            {
                //先移动箱子到下一个位置，只是交换了地图上的两个字符
                move(map,boxX,boxY,boxNextX,boxNextY);
                //把小人移动到箱子的位置
                move(map,personX,personY,boxX,boxY);
                //更新小人的坐标
                personX = boxX;
                personY = boxY;
                //更新箱子的坐标
                boxX = boxNextX;
                boxY = boxNextY;
            }
            else
            //如果箱子的下一个位置是墙，提出警告（响铃）
            {
                printf("\a");
            }
        //如果箱子的下一个位置是出口，提示成功
        if(boxX == COLNUM -2)
        {
            printf("哇喔，你把箱子推出来了！\n");
            break;
        }
            
        }
        //更新（重绘）地图
        printMap(map);
    }
        //五、 提示游戏结束，成功或者失败
        
    return 0;
}

void printMap(char aa[][COLNUM])
{
    //对于二维数组，考虑到要用到两层for循环
    //i表示行灵敏，j表示列数
    for(int i = 0;i<ROWNUM;i++)
    {
        for(int j = 0; j<COLNUM; j++)
        {
            printf("%c",aa[i][j]);
        }
        printf("\n");
    }
}
//移动函数，交换两个位置的字符
void move(char aa[][COLNUM],int oldX,int oldY,int newX,int newY)
{
    char temp = aa[oldY][oldX];
    aa[oldY][oldX] = aa[newY][newX];
    aa[newY][newX] = temp;
}
