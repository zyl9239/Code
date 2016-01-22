//
//  EasyMusicPlayer.h
//  歌词解析
//
//  Created by qingyun on 15/12/10.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EasyMusicPlayer : NSObject

{
    NSMutableArray *_lyrics;
    NSTimeInterval _timeCount;
}

-(void)convertLyric:(NSString *)file;

-(void)play;

@end
