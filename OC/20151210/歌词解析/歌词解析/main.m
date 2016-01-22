//
//  main.m
//  歌词解析
//
//  Created by qingyun on 15/12/10.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#define LyricPath @"/Users/qingyun/Desktop/男人KTV.lrc"

#import "EasyMusicPlayer.h"

int main(int argc, const char * argv[]) {
    EasyMusicPlayer *player = [EasyMusicPlayer new];
    [player convertLyric:LyricPath];
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:player selector:@selector(play) userInfo:nil repeats:YES];
    
    [[NSRunLoop mainRunLoop] run];
    return 0;
}
