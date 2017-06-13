//
//  ZXLiveViewModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseViewModel.h"
/**
 *  直播VM
 */
@interface ZXLiveViewModel : ZXBaseViewModel
/**  返回分组数 */
@property (nonatomic,assign) NSInteger sectionNumber;
/**  通过分组数返回行数 */
- (NSInteger)rowNumberForSection:(NSInteger)section;
/**  通过分组数返回主标题 */
- (NSString *)mainTitleForSection:(NSInteger)section;
/**  通过分组数判断是否有更多 */
- (BOOL)hasMoreForSection:(NSInteger)section;

/** 通过分组和index返回按钮背景URL*/
- (NSURL *)coverURLForSection:(NSInteger)section index:(NSInteger)index;
/** 通过分组和index返回按钮标签*/
- (NSString *)nameForSection:(NSInteger)section index:(NSInteger)index;


/** 通过indexPath返回coverURL*/
- (NSURL *)coverURLForRow:(NSInteger)row;
/** 通过indexPath返回标题*/
- (NSString *)titleForRow:(NSInteger)row;
/** 通过indexPath返回子标题*/
- (NSString *)subTitleForRow:(NSInteger)row;
/** 通过indexPath返回收听数*/
- (NSString *)soundCountForRow:(NSInteger)row;

/** 通过indexPath返回cell高*/
- (CGFloat)cellHeightForIndexPath:(NSIndexPath *)indexPath;

@end
