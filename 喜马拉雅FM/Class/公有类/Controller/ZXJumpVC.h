//
//  ZXJumpVC.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/1.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 * (发现-热门更多)页面跳转视图, 负责初始化WMPageController  并跳转
 */
@interface ZXJumpVC : UIViewController

/** 控制器初始化 */
- (instancetype)initWithCategoryId:(NSInteger)categoryId contentType:(NSString *)type tag:(NSInteger)tag;

@property (nonatomic,assign) NSInteger categoryId;
@property (nonatomic,strong) NSString *type;
@property (nonatomic,assign) NSInteger tag;

@end
