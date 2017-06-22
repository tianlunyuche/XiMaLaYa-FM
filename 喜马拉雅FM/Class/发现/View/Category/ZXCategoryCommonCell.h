//
//  ZXCategoryCommonCell.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/3/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZXCategoryButton.h"
/**
 *  两图标 两label   中间Vie隔开
 */
@interface ZXCategoryCommonCell : UITableViewCell
/*
 @property (nonatomic,strong) UIImageView *icon1;
 // icon2顺便设分隔线
 @property (nonatomic,strong) UIImageView *icon2;
 @property (nonatomic,strong) UILabel *categoryLb1;
 @property (nonatomic,strong) UILabel *categoryLb2;
 */
@property (nonatomic,strong)ZXCategoryButton *btn1;
@property (nonatomic,strong)ZXCategoryButton *btn2;

@end
