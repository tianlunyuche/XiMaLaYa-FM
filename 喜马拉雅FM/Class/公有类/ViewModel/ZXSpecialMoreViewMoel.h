//
//  ZXSpecialMoreViewMoel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/1.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseViewModel.h"
/**
 *  精品听单栏VM
 */
@interface ZXSpecialMoreViewMoel : ZXBaseViewModel

// 加载页变化
@property (nonatomic,assign) NSInteger page;

// 以时间, 获取相应的分组数
@property (nonatomic,assign) NSInteger section;

/** 通过分组数, 以时间, 获取相应的行数*/
- (NSInteger)rowNumberForSection:(NSInteger)section;

- (NSURL *)coverURLForSection:(NSInteger)section row:(NSInteger)index;
- (NSString *)titleForSection:(NSInteger)section row:(NSInteger)index;
// 详情
- (NSString *)trackTitleForSection:(NSInteger)section row:(NSInteger)index;
/** 几个声音 */
- (NSString *)footNoteForSection:(NSInteger)section row:(NSInteger)index;
/** 根据分组获取,组头title */
- (NSString *)mainTitleForSection:(NSInteger)section;

@end
