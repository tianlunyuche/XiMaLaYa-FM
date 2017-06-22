//
//  ZXRankViewModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/3/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseViewModel.h"

@interface ZXRankViewModel : ZXBaseViewModel

/**  返回分组数 */
@property (nonatomic,assign) NSInteger sectionNumber;
/**  通过分组数返回行数 */
- (NSInteger)rowNumberForSection:(NSInteger)section;
/**  通过分组数返回主标题 */
- (NSString *)mainTitleForSection:(NSInteger)section;

/**  通过分组和行数, 返回图标URL */
- (NSURL *)coverURLForSection:(NSInteger)section row:(NSInteger)row;
/**  通过分组和行数, 返回URL */
- (NSString *)titleForSection:(NSInteger)section row:(NSInteger)row;
/**  通过分组和行数, 返回URL */
- (NSString *)firstTitleForSection:(NSInteger)section row:(NSInteger)row;
/**  通过分组和行数, 返回URL */
- (NSString *)secondTitleForSection:(NSInteger)section row:(NSInteger)row;

/**  是否 存在头部滚动视图 */
/** 头部滚动视图 图片总数 */
@property (nonatomic,assign) NSInteger focusImgNumber;
/** 头部滚动视图 图片URL */
- (NSURL *)focusImgURLForIndex:(NSInteger)index;

@end
