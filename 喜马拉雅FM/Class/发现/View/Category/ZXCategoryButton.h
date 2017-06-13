//
//  ZXCategoryButton.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  分类按钮, 左边图片 右边标签
 */
@interface ZXCategoryButton : UIButton

@property (nonatomic,strong) UIImageView *icon;
@property (nonatomic,strong) UILabel *categoryLb;

@end
