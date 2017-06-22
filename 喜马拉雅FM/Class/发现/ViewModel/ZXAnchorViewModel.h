//
//  ZXAnchorViewModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/3/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseViewModel.h"

/**
 *  主播VM
 */
@interface ZXAnchorViewModel : ZXBaseViewModel

// 分组数量
@property (nonatomic,assign) NSInteger section;

// 主播cover图片
- (NSURL *)coverURLForSection:(NSInteger)section Index:(NSInteger)index;
// 主播Name
- (NSString *)nameForSection:(NSInteger)section Index:(NSInteger)index;

/** 给TitleView的组title-----更多都为1*/
- (NSString *)mainTitleForSection:(NSInteger)section;

@end
