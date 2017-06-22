//
//  ZXBaseViewModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BaseViewModelDelegate <NSObject>

@optional
//获取更多
- (void)getMoreDataCompletionHandle:(void(^)(NSError *error))completed;
//刷新
- (void)refreshDataCompletionHandle:(void(^)(NSError *error))completed;
//获取数据
- (void)getDataCompletionHandle:(void(^)(NSError *error))completed;
//通过indexPath返回cell 高
- (CGFloat)cellHeightForIndexPath:(NSIndexPath *)indexPath;

@end


@interface ZXBaseViewModel : NSObject<BaseViewModelDelegate>

@property(nonatomic,strong)NSURLSessionDataTask *dataTask;
//取消任务
- (void)cancelTask;
//暂停任务
- (void)suspendTask;
//继续任务
- (void)resumeTask;

@end
