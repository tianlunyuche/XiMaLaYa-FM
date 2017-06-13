//
//  ZXCategoryViewModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseViewModel.h"
/**
 *  分类VM
 */
@interface ZXCategoryViewModel : ZXBaseViewModel

// 返回list个数
@property(nonatomic,assign)NSInteger listsCount;

//获取图标接口
- (NSURL *)coverURLForIndex:(NSInteger)index;
//获取Title接口
- (NSString *)titleForIndex:(NSInteger)index;

@end
