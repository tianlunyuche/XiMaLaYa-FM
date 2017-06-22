//
//  ZXBaseViewModel.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseViewModel.h"

@implementation ZXBaseViewModel

//取消任务
- (void)cancelTask{
    [self.dataTask cancel];
}
//暂停任务
- (void)suspendTask{
    [self.dataTask suspend];
}
//继续任务
- (void)resumeTask{
    [self.dataTask resume];
}

@end
