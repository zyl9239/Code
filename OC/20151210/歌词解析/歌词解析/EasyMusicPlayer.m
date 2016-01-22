//
//  EasyMusicPlayer.m
//  歌词解析
//
//  Created by qingyun on 15/12/10.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import "EasyMusicPlayer.h"

@implementation EasyMusicPlayer

-(void)convertLyric:(NSString *)file
{
    //1.解析文本内容
    NSString *lyricStr = [NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:nil];
    
    //2.分割为数组
    NSArray *lyricArr = [lyricStr componentsSeparatedByString:@"\n"];
    NSLog(@"lyric >>>>>> %@",lyricArr);
    
    //3.遍历歌词数组，获取可以使用的格式
    _lyrics = [NSMutableArray array];
    for (NSString *str in lyricArr) {
        NSArray *subArr = [str componentsSeparatedByString:@"]"];
        
        if ([subArr count] >1 ) {
            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            
            NSString *timeStr = subArr[0];
            
            NSTimeInterval interval;
            NSString *minuteStr = [timeStr substringWithRange:NSMakeRange(1,2)];
            NSString *secondStr = [timeStr substringFromIndex:4];
            interval = [minuteStr intValue] *60 + [secondStr doubleValue];
//            NSLog(@"%f",interval);
            dict[@"time"] = @(interval);
            dict[@"lyric"] = subArr[1];
            [_lyrics addObject:dict];
        }
    }
}

-(void)play
{
    _timeCount += 1;
    for (NSDictionary *dic in _lyrics) {
//        NSLog(@"%d",(int)[dic[@"time"] doubleValue]);
        if(_timeCount == (int)[dic[@"time"] doubleValue]){
            NSLog(@"%@",dic[@"lyric"]);
        }
    }
}

@end
