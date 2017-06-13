//
//  ZXMoreCategoryViewModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/1.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseViewModel.h"

@interface ZXMoreCategoryViewModel : ZXBaseViewModel

/**  VM初始化,通过获取外界数据,进行网络加载 */
- (instancetype)initWithCategoryId:(NSInteger)categoryId tagName:(NSString *)name;
@property (nonatomic,strong) NSString *name;
@property (nonatomic,assign) NSInteger categoryId;

// 最大显示行数
@property (nonatomic,assign) NSInteger pageSize;
// 显示总行数
@property (nonatomic,assign) NSInteger rowNumber;

/**  通过分组数, 获取图标*/
- (NSURL *)coverURLForRow:(NSInteger)row;
/**  通过分组数, 获取作者(intro)*/
- (NSString *)introForRow:(NSInteger)row;
/**  通过分组数, 获取播放次数*/
- (NSString *)playsForRow:(NSInteger)row;
/**  通过分组数, 获取集数*/
- (NSString *)tracksForRow:(NSInteger)row;

/**  通过分组数, 获取标题(title)*/
- (NSString *)titleForRow:(NSInteger)row;
/**  通过分组数, 获取分类Id */
- (NSInteger)albumIdForRow:(NSInteger)row;

@end
